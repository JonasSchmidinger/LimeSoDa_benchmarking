# In this file, we define the functions that are used for the benchmarking later on, see benchmarking scripts in the folder Benchmarking_scripts



# This function randomly permutes indices for the dataset to create a cross-validation set for the nested cross-validation
#
# Input:
# df_input: The dataset that is to be permuted
# folds_input: The number of folds that the dataset is to be divided into
#
# Output:
# permuted_vec: A vector of the same length as the dataset that contains the fold number for each sample

sample_cv <- function(df_input, folds_input) {
  desired_length <- nrow(df_input)
  values <- 1:folds_input
  vector_fill <- rep(values, times = floor(desired_length / length(values)))
  if (length(vector_fill) != desired_length) {
    rest_vector <- sample(1:folds_input, desired_length - length(vector_fill))
    vector_fill <- append(vector_fill, rest_vector)
  }
  permuted_vec <- sample(vector_fill)
  return(permuted_vec)
}


# This function calculates common performance metrics used in DSM for the model, ultimately we only evaluated the RMSE and R2 for the study
#
# Input:
# prediction_set: Vector of predictions made by the model
# test_set: Vector of ground truth values
#
# Output:
# result_df: A dataframe containing the calculated metrics

point_prediction_performance <-function(prediction_set, test_set){
  R2 <- (1 - sum((prediction_set - test_set)^2) / sum((test_set - mean(test_set))^2))
  RMSE <- sqrt(mean((prediction_set - test_set)^2))
  MAE <- mean(abs(prediction_set - test_set))
  ME <- mean(prediction_set - test_set)
  CCC <- 2 * cov(prediction_set, test_set) / (var(prediction_set) + var(test_set) + (mean(prediction_set) - mean(test_set))^2)
  result_df<- data.frame("R2" = R2, "CCC"=CCC, "RMSE" = RMSE, "MAE" = MAE, "ME" = ME)
  return(result_df)
}



# This function drops the target soil properties from the dataset, which are not predicted by the model, otherwise they would leak into the feature set
#
# Input:
# dataframe (in input): The dataset that is to be modified
# soil_property: The soil property that is to be predicted
#
# Output:
# dataframe (in return): The modified dataset without the non-predicted soil properties

Drop_non_predicted_soil_properties <- function(dataframe, soil_property){
  columns_to_exclude <- colnames(dataframe)[1:3][!grepl(soil_property, colnames(dataframe)[1:3])]
  if (length(columns_to_exclude) == 3){
    stop("The soil property is not in the dataset")
  }
  dataframe <- dataframe %>%
    select(-all_of(columns_to_exclude))

  return(dataframe)
}


# This function is to take multiple lists and combine them to dataframes into a single list.
# This is necessary for the foreach loop, allowing parallel computing.
#
# Input:
# Multiple lists created by the foreach loop
#
# Output:
# A single list containing the combined dataframes

combine_lists <- function(...) {
  list_of_lists <- list(...)

  combined_df1 <- list()
  combined_df2 <- list()
  combined_df3 <- list()
  combined_df4 <- list()
  combined_df5 <- list()


  for (l in list_of_lists) {
    combined_df1 <- c(combined_df1, list(l[[1]]))
    combined_df2 <- c(combined_df2, list(l[[2]]))
    combined_df3 <- c(combined_df3, list(l[[3]]))
    combined_df4 <- c(combined_df4, l[[4]])
    combined_df5 <- c(combined_df5, l[[5]])
  }

  df1 <- do.call(rbind, combined_df1)
  df2 <- do.call(rbind, combined_df2)
  df3 <- do.call(rbind, combined_df3)

  list(Predictions = df1, Nested_Hyperparameter_performance = df2,
       Best_Hyperparameters = df3, Training_folds = combined_df4, Test_fold = combined_df5)
}



# This reduces the dimensionality of the features using PCA (Principal Component Analysis) or CMF (Correlation Matrix Filter), but it is first applied to the training set and then projected to the testing set.
# It applies the dimensionality reduction method defined in the hyperparameter search and only applies it to the spectral data (indicated by the wl or wn column names).
# If CMF cutoff == 1 it uses the full spectral dataset.
#
# Input:
# high_dimensional: A boolean value that indicates whether the dataset is high-dimensional or not, we only applied this function to high dimensional vis-NIR, NIR and MIR datasets
# trainingdataframe: The training dataset
# testingdataframe: The testing dataset
# hyperparameters: The hyperparameters that are used for the dimensionality reduction (i.e. how many components are used for PCA and which cutoff for CMF)
#
# Output:
# datasets_with_reduced_features: A list with the dataframe for the training and testing dataset with now reduced features


reduce_dimensionality <- function(high_dimensional,trainingdataframe, testingdataframe, hyperparameters){
  trainingdataframe_adjusted <- trainingdataframe
  testingdataframe_adjusted <- testingdataframe

  if (high_dimensional == T){

      training_spectra_columns <- trainingdataframe %>% dplyr::select(matches("wl|wn"))
      testing_spectra_columns <- testingdataframe %>% dplyr::select(matches("wl|wn"))


    if (hyperparameters$Dimensionality_reduction=="PCA"){
      PCA <- prcomp(training_spectra_columns, scale = TRUE)
      test_PCA <- predict(PCA, testing_spectra_columns)[,1:hyperparameters$PCA_number]

      PCA_trainingdataframe <- trainingdataframe %>% dplyr::select(-matches("wl|wn"))
      PCA_testingdataframe <- testingdataframe %>% dplyr::select(-matches("wl|wn"))

      trainingdataframe_adjusted <- cbind(PCA_trainingdataframe, as.data.frame(PCA$x[,1:hyperparameters$PCA_number]))
      testingdataframe_adjusted <- cbind(PCA_testingdataframe, test_PCA)

    }

    else if (hyperparameters$Dimensionality_reduction=="CMF"){
      if (hyperparameters$CMF_cutoff == 1){ # if it is 1, then we use the full dataset, i.e. no data reduction
        testingdataframe_adjusted <- testingdataframe
        trainingdataframe_adjusted <- trainingdataframe
      }
      else{
      correlated_drop <- findCorrelation(cor(training_spectra_columns), cutoff = hyperparameters$CMF_cutoff,exact = F)

      CMF_trainingdataframe <- trainingdataframe %>% dplyr::select(-matches("wl|wn"))
      CMF_testingdataframe <- testingdataframe %>% dplyr::select(-matches("wl|wn"))


      trainingdataframe_adjusted <- cbind(CMF_trainingdataframe, training_spectra_columns[ , -correlated_drop, drop = FALSE])
      testingdataframe_adjusted <- cbind(CMF_testingdataframe, testing_spectra_columns[ , -correlated_drop, drop = FALSE])
      }
      }
      else{
        stop("Dimensionality_reduction must be either PCA or CMF")
      }
  }
  datasets_with_reduced_features <- list("train"= trainingdataframe_adjusted, "test"= testingdataframe_adjusted)

  return(datasets_with_reduced_features)
}



# This function is to adjust the mtry hyperparameter for the random forest model input. The hyperparameter search has defined mtry as % of the number of features in a dataset but the randomforest function requires an absolute number of features.
#
# Input:
# hyperparameters (in input): The full hyperparameter search space
# dataframe: The dataset
# k: The row number of the hyperparameters, where mtry needs to be adjusted to an absolute number
#
# Output:
# hyperparameters (in return): The hyperparameters with the mtry adjusted in row k, where mtry is now an absolute number instead of a percentage value

adjust_mtry <- function(hyperparameters,dataframe,k){
  if ("mtry" %in% colnames(hyperparameters)){
    hyperparameters[k,]$mtry <- ceiling(hyperparameters[k,]$mtry * (ncol(dataframe) - 1)) # to prevent it going to zero we use the ceiling function instead of round
  }
  return(hyperparameters)
}





# This function duplicates the hyperparameter search and adds the dimensionality reduction method to the hyperparameters
#
# Input:
# high_dimensional: A boolean value that indicates whether the dataset is high-dimensional or not, we only applied this function to high dimensional vis-NIR, NIR and MIR datasets
# hyperparameters: The original hyperparamter search space
#
# Output:
# adjusted_hyperparameters: The duplicated hyperparameters with the dimensionality reduction method added to the hyperparameters


adjust_hyperparameters <- function(high_dimensional,hyperparameters){

  if (high_dimensional == T){
    hyperparameters_PCA <- hyperparameters
    hyperparameters_PCA$Dimensionality_reduction <- "PCA"


    hyperparameters_CMF <- hyperparameters
    hyperparameters_CMF$Dimensionality_reduction <- "CMF"


    adjusted_hyperparameters <- rbind(hyperparameters_PCA, hyperparameters_CMF)

  }
  else{

    adjusted_hyperparameters <- hyperparameters

  }

  return(adjusted_hyperparameters)
}


# A slight adjustment of the prior function for MLR, with less hyperparameter runs, since it is deterministic and repeating is not necessary

adjust_hyperparameters_MLR <- function(high_dimensional,hyperparameters){

  if (high_dimensional == T){
    hyperparameters_CMF <- hyperparameters
    hyperparameters_CMF$Dimensionality_reduction <- "CMF"


    hyperparameters_PCA <- data.frame(Dimensionality_reduction = "PCA", PCA_number =5:max(hyperparameters$PCA_number),CMF_cutoff=0) # only a single repeat for PCA with 5 to 20
    adjusted_hyperparameters <- rbind(hyperparameters_PCA, hyperparameters_CMF)

  }
  else{

    adjusted_hyperparameters <- hyperparameters

  }

  return(adjusted_hyperparameters)
}



# This function starts the benchmarking of the random forest model for a specific soil property
#
# Input:
# dataset: The dataset
# soil_property: The soil property that is being predicted
# folds: The cross-validation folds (outer folds), for inner folds fixed to 5
# hyperparameters: The hyperparameter search space
# high_dimensional: A boolean value that indicates whether the dataset is high-dimensional or not, for high dimensional datasets with NIR, vis-NIR and MIR features we applied further dimensionality reduction methods
#
# Output:
# Predictions_list_RF: A list which contains, the predicted and observed values (outer folds), the performances for the given hyperparamters (inner folds), the best hyperparameters, which were selected for the training in the outer folds and lastly the training and test dataframes for the outer folds


RF_benchmarking <- function(dataset,soil_property,folds,hyperparameters,high_dimensional){
  cat(sprintf("Starting RF benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  dataset_target<- Drop_non_predicted_soil_properties(dataset,soil_property)
  hyperparameters <- adjust_hyperparameters(high_dimensional,hyperparameters)

  predicted_values <- c()
  test_values <- c()

  Predictions_list_RF <- foreach(i = 1:max(folds), .combine = combine_lists, .packages = package_vector, .export = ls(globalenv())) %dopar% {
    training_data <- dataset_target[folds != i,]
    test_data <- dataset_target[folds == i,]
    performance_hyperparamaters <- data.frame()



    folds_nested <- sample_cv(training_data, 5) #nested CV folds determined as 10
    for (k in 1:nrow(hyperparameters)){
      predicted_values_nested <- c()
      test_values_nested <- c()



      for (j in 1:max(folds_nested)){
        training_data_nested <- training_data[folds_nested != j,]
        test_data_nested <- training_data[folds_nested == j,]
        reduced_data_nested <- reduce_dimensionality(high_dimensional,training_data_nested, test_data_nested, hyperparameters[k, , drop = FALSE])
        training_data_nested_2 <-reduced_data_nested$train
        test_data_nested_2 <-reduced_data_nested$test
        absolute_mtry_hyperparameter <- adjust_mtry(hyperparameters,training_data_nested_2,k)

        model_nested <- ranger(formula = as.formula(paste(soil_property, "~ .")), data = training_data_nested_2,
                               num.trees = hyperparameters$num.trees[k],
                               max.depth = hyperparameters$max.depth[k],
                               mtry = absolute_mtry_hyperparameter$mtry[k],
                               min.node.size = hyperparameters$min.node.size[k],
                               sample.fraction = hyperparameters$sample.fraction[k])

        model_nested_predictions <- predict(model_nested, data = test_data_nested_2)
        predicted_values_nested <- c(predicted_values_nested, model_nested_predictions$predictions)
        test_values_nested <- c(test_values_nested, test_data_nested_2[[soil_property]])
      }
      performance_hyperparamaters_bind <-cbind(point_prediction_performance(predicted_values_nested, test_values_nested), hyperparameters[k,], "Fold" = i )
      performance_hyperparamaters <- rbind(performance_hyperparamaters, performance_hyperparamaters_bind)
    }

    best_hyperparamaters <- performance_hyperparamaters[which.min(performance_hyperparamaters$RMSE),]
    reduced_data <- reduce_dimensionality(high_dimensional,training_data, test_data, best_hyperparamaters)
    training_data_2 <-reduced_data$train
    test_data_2 <-reduced_data$test
    absolute_best_mtry_hyperparameter <- adjust_mtry(best_hyperparamaters,training_data_2,1)

    model <- ranger(formula = as.formula(paste(soil_property, "~ .")), data = training_data_2,
                    num.trees = best_hyperparamaters$num.trees,
                    max.depth = best_hyperparamaters$max.depth,
                    mtry = absolute_best_mtry_hyperparameter$mtry,
                    min.node.size = best_hyperparamaters$min.node.size,
                    sample.fraction = best_hyperparamaters$sample.fraction)

    model_predictions <- predict(model, data = test_data_2)
    predicted_values <- c(predicted_values, model_predictions$predictions)
    test_values <- c(test_values, test_data_2[[soil_property]])


    list(data.frame("Predicted"= predicted_values, "Measured"= test_values),
         performance_hyperparamaters,
         best_hyperparamaters,
         list(cbind(training_data_2,data.frame("Fold"=i))),
         list(cbind(test_data_2,data.frame("Fold"=i))))
  }

  cat(sprintf("Completed RF benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  return(Predictions_list_RF)
}



# Same as for RF_benchmarking but for MLR

MLR_benchmarking <- function(dataset,soil_property,folds,hyperparameters,high_dimensional){
  cat(sprintf("Starting MLR benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  dataset_target<- Drop_non_predicted_soil_properties(dataset,soil_property)
  hyperparameters <- adjust_hyperparameters_MLR(high_dimensional,hyperparameters)

  predicted_values <- c()
  test_values <- c()

  Predictions_list_MLR <- foreach(i = 1:max(folds), .combine = combine_lists, .packages = package_vector, .export = ls(globalenv())) %dopar% {
    training_data <- dataset_target[folds != i,]
    test_data <- dataset_target[folds == i,]
    performance_hyperparamaters <- data.frame()


    if (high_dimensional == TRUE){
      folds_nested <- sample_cv(training_data, 5)

      for (k in 1:nrow(hyperparameters)){
        predicted_values_nested <- c()
        test_values_nested <- c()

        for (j in 1:max(folds_nested)){
          training_data_nested <- training_data[folds_nested != j,]
          test_data_nested <- training_data[folds_nested == j,]
          reduced_data_nested <- reduce_dimensionality(high_dimensional,training_data_nested, test_data_nested, hyperparameters[k, , drop = FALSE])
          training_data_nested_2 <-reduced_data_nested$train
          test_data_nested_2 <-reduced_data_nested$test


          model_nested <- lm(as.formula(paste(soil_property, "~ .")), data = training_data_nested_2)

          model_nested_predictions <- predict(model_nested, newdata = test_data_nested_2)
          predicted_values_nested <- c(predicted_values_nested, model_nested_predictions)
          test_values_nested <- c(test_values_nested, test_data_nested_2[[soil_property]])
        }
        performance_hyperparamaters_bind <-cbind(point_prediction_performance(predicted_values_nested, test_values_nested), hyperparameters[k, , drop = FALSE], "Fold" = i )
        performance_hyperparamaters <- rbind(performance_hyperparamaters, performance_hyperparamaters_bind)
      }
      best_hyperparamaters <- performance_hyperparamaters[which.min(performance_hyperparamaters$RMSE),]
    }
    else{
      best_hyperparamaters <- NA
    }

    reduced_data <- reduce_dimensionality(high_dimensional,training_data, test_data, best_hyperparamaters)
    training_data_2 <-reduced_data$train
    test_data_2 <-reduced_data$test

    model <- lm(as.formula(paste(soil_property, "~ .")), data = training_data_2)
    model_predictions <- predict(model, test_data_2)

    predicted_values <- c(predicted_values, model_predictions)
    test_values <- c(test_values, test_data_2[[soil_property]])
    list(data.frame("Predicted"= predicted_values, "Measured"= test_values),
         performance_hyperparamaters,
         data.frame(best_hyperparamaters),
         list(cbind(training_data_2,data.frame("Fold"=i))),
         list(cbind(test_data_2,data.frame("Fold"=i))))
  }

  cat(sprintf("Completed MLR benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  return(Predictions_list_MLR)
}



# Same as for RF_benchmarking but for CatBoost

CatBoost_benchmarking <- function(dataset,soil_property,folds,hyperparameters,high_dimensional){
  cat(sprintf("Starting CatBoost benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  dataset_target<- Drop_non_predicted_soil_properties(dataset,soil_property)
  hyperparameters <- adjust_hyperparameters(high_dimensional,hyperparameters)

  predicted_values <- c()
  test_values <- c()

  Predictions_list_CatBoost <- foreach(i = 1:max(folds), .combine = combine_lists, .packages = package_vector, .export = ls(globalenv())) %dopar% {
    training_data <- dataset_target[folds != i,]
    test_data <- dataset_target[folds == i,]

    performance_hyperparamaters <- data.frame()


    folds_nested <- sample_cv(training_data, 5)
    for (k in 1:nrow(hyperparameters)){
      predicted_values_nested <- c()
      test_values_nested <- c()


      for (j in 1:max(folds_nested)){


        training_data_nested <- training_data[folds_nested != j,]
        test_data_nested <- training_data[folds_nested == j,]
        reduced_data_nested <- reduce_dimensionality(high_dimensional,training_data_nested, test_data_nested, hyperparameters[k, , drop = FALSE])
        training_data_nested_2 <-reduced_data_nested$train
        test_data_nested_2 <-reduced_data_nested$test

        train_pool_nested <- catboost.load_pool(data =  training_data_nested_2[-1] , label = training_data_nested_2[[soil_property]])

        model_nested <- catboost.train(train_pool_nested,  NULL,
                                       params = list(iterations = hyperparameters$iterations[k],
                                                     learning_rate=hyperparameters$learning_rate[k],
                                                     depth=hyperparameters$depth[k],
                                                     l2_leaf_reg=hyperparameters$l2_leaf_reg[k],
                                                     rsm=hyperparameters$rsm[k],
                                                     subsample=hyperparameters$subsample[k],
                                                     random_strength=hyperparameters$random_strength[k],
                                                     border_count=254,
                                                     logging_level="Silent"))

        test_pool_nested <- catboost.load_pool(test_data_nested_2[-1])
        model_nested_predictions <- catboost.predict(model_nested, test_pool_nested)

        predicted_values_nested <- c(predicted_values_nested, model_nested_predictions)
        test_values_nested <- c(test_values_nested, test_data_nested_2[[soil_property]])
      }
      performance_hyperparamaters_bind <-cbind(point_prediction_performance(predicted_values_nested, test_values_nested), hyperparameters[k,], "Fold" = i )
      performance_hyperparamaters <- rbind(performance_hyperparamaters, performance_hyperparamaters_bind)
    }
    best_hyperparamaters <- performance_hyperparamaters[which.min(performance_hyperparamaters$RMSE),]
    reduced_data <- reduce_dimensionality(high_dimensional,training_data, test_data, best_hyperparamaters)
    training_data_2 <-reduced_data$train
    test_data_2 <-reduced_data$test


    train_pool <- catboost.load_pool(data =  training_data_2[-1] , label = training_data_2[[soil_property]])

    model <- catboost.train(train_pool,  NULL,
                            params = list(iterations = best_hyperparamaters$iterations,
                                          learning_rate=best_hyperparamaters$learning_rate,
                                          depth=best_hyperparamaters$depth,
                                          l2_leaf_reg=best_hyperparamaters$l2_leaf_reg,
                                          rsm=best_hyperparamaters$rsm,
                                          subsample=best_hyperparamaters$subsample,
                                          random_strength=best_hyperparamaters$random_strength,
                                          border_count=254,
                                          logging_level="Silent"))

    test_pool <- catboost.load_pool(test_data_2[-1])
    model_predictions <- catboost.predict(model, test_pool)
    predicted_values <- c(predicted_values, model_predictions)
    test_values <- c(test_values, test_data_2[[soil_property]])


    list(data.frame("Predicted"= predicted_values, "Measured"= test_values),
         performance_hyperparamaters,
         best_hyperparamaters,
         list(cbind(training_data_2,data.frame("Fold"=i))),
         list(cbind(test_data_2,data.frame("Fold"=i))))
  }

  cat(sprintf("Completed CatBoost benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  return(Predictions_list_CatBoost)
}




# Same as for RF_benchmarking but for SVR


SVR_benchmarking <- function(dataset,soil_property,folds,hyperparameters,high_dimensional){
  cat(sprintf("Starting SVR benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  dataset_target<- Drop_non_predicted_soil_properties(dataset,soil_property)
  hyperparameters <- adjust_hyperparameters(high_dimensional,hyperparameters) #####

  predicted_values <- c()
  test_values <- c()

  Predictions_list_SVR <- foreach(i = 1:max(folds), .combine = combine_lists, .packages = package_vector, .export = ls(globalenv())) %dopar% {
    training_data <- dataset_target[folds != i,]
    test_data <- dataset_target[folds == i,]
    performance_hyperparamaters <- data.frame()



    folds_nested <- sample_cv(training_data, 5)
    for (k in 1:nrow(hyperparameters)){
      predicted_values_nested <- c()
      test_values_nested <- c()



      for (j in 1:max(folds_nested)){
        training_data_nested <- training_data[folds_nested != j,]
        test_data_nested <- training_data[folds_nested == j,]
        reduced_data_nested <- reduce_dimensionality(high_dimensional,training_data_nested, test_data_nested, hyperparameters[k, , drop = FALSE])
        training_data_nested_2 <-reduced_data_nested$train
        test_data_nested_2 <-reduced_data_nested$test

        model_nested <- svm(
          y = training_data_nested_2[[soil_property]], x = training_data_nested_2[-1],
          kernel=hyperparameters$kernel[k],
          cost=hyperparameters$cost[k],
          gamma=hyperparameters$gamma[k]
        )

        model_nested_predictions <- as.vector(predict(model_nested, newdata = test_data_nested_2[-1]))
        predicted_values_nested <- c(predicted_values_nested, model_nested_predictions)
        test_values_nested <- c(test_values_nested, test_data_nested_2[[soil_property]])
      }
      performance_hyperparamaters_bind <-cbind(point_prediction_performance(predicted_values_nested, test_values_nested), hyperparameters[k,], "Fold" = i )
      performance_hyperparamaters <- rbind(performance_hyperparamaters, performance_hyperparamaters_bind)
    }

    best_hyperparamaters <- performance_hyperparamaters[which.min(performance_hyperparamaters$RMSE),]
    reduced_data <- reduce_dimensionality(high_dimensional,training_data, test_data, best_hyperparamaters)
    training_data_2 <-reduced_data$train
    test_data_2 <-reduced_data$test

    model <- svm(
      y = training_data_2[[soil_property]], x = training_data_2[-1],
      kernel=best_hyperparamaters$kernel,
      cost=best_hyperparamaters$cost,
      gamma=best_hyperparamaters$gamma
    )

    model_predictions <- as.vector(predict(model, newdata = test_data_2[-1]))
    predicted_values <- c(predicted_values, model_predictions)
    test_values <- c(test_values, test_data_2[[soil_property]])


    list(data.frame("Predicted"= predicted_values, "Measured"= test_values),
         performance_hyperparamaters,
         best_hyperparamaters,
         list(cbind(training_data_2,data.frame("Fold"=i))),
         list(cbind(test_data_2,data.frame("Fold"=i))))
  }

  cat(sprintf("Completed SVR benchmarking at %s for soil property %s\n",
            format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
            soil_property))

  return(Predictions_list_SVR)
}



