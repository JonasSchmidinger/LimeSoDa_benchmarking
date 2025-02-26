library(catboost)
library(ranger)
library(doParallel)
library(foreach)
library(parallel)
library(Metrics)
library(future)
library(dplyr)
library(stats)
library(optparse)
library(caret)
library(e1071)


# Define command-line options
option_list <- list(
  make_option(c("-c", "--cores"), type="integer", default=1, 
              help="Number of cores to use [default %default]", metavar="number")
)

# Parse command-line options
opt_parser <- OptionParser(option_list=option_list)
opt <- parse_args(opt_parser)

# Use the parsed number of cores
num_cores <- opt$cores

# Print the number of cores being used
cat("Using", num_cores, "cores\n")

# Load data
source("Benchmarking/Benchmarking_functions.R")
CV.98_data_table <- readRDS(file = "Stored_dataset_files/CV.98_data_table.rds")

# Load folds
CV.98_folds <- readRDS(file = "Stored_split_files/CV.98_folds.rds")

tuning_hyperparamaters_RF <- readRDS(file = "Stored_Hyperparameter_search_files/RF_Hyperparameter_search")
tuning_hyperparamaters_CatBoost <- readRDS(file = "Stored_Hyperparameter_search_files/CatBoost_Search_search")
tuning_hyperparameters_SVR <- readRDS(file = "Stored_Hyperparameter_search_files/SVR_Hyperparameter_search")

# Prepare the parallel computing
active_Rstudio <- search()
package_vector <- gsub("^package:", "", grep("^package:", active_Rstudio, value = TRUE))
cl <- makeClusterPSOCK(num_cores, revtunnel = TRUE, verbose = TRUE)
registerDoParallel(cores = num_cores)



# Run Random Forest
set.seed(2025)

CV.98_SOC_RF <- RF_benchmarking(CV.98_data_table, "SOC_target", CV.98_folds,tuning_hyperparamaters_RF,T)
CV.98_Clay_RF <- RF_benchmarking(CV.98_data_table, "Clay_target", CV.98_folds,tuning_hyperparamaters_RF,T)
CV.98_pH_RF <- RF_benchmarking(CV.98_data_table, "pH_target", CV.98_folds,tuning_hyperparamaters_RF,T)

saveRDS(object = CV.98_SOC_RF,file = "Stored_benchmarking_predictions/CV.98_SOC_RF")
saveRDS(object = CV.98_Clay_RF,file = "Stored_benchmarking_predictions/CV.98_Clay_RF")
saveRDS(object = CV.98_pH_RF,file = "Stored_benchmarking_predictions/CV.98_pH_RF")

# Run CatBoost
set.seed(2025)
CV.98_SOC_CatBoost <- CatBoost_benchmarking(CV.98_data_table, "SOC_target", CV.98_folds, tuning_hyperparamaters_CatBoost,T)
CV.98_Clay_CatBoost <- CatBoost_benchmarking(CV.98_data_table, "Clay_target", CV.98_folds, tuning_hyperparamaters_CatBoost,T)
CV.98_pH_CatBoost <- CatBoost_benchmarking(CV.98_data_table, "pH_target", CV.98_folds, tuning_hyperparamaters_CatBoost,T)

saveRDS(object = CV.98_SOC_CatBoost,file = "Stored_benchmarking_predictions/CV.98_SOC_CatBoost")
saveRDS(object = CV.98_Clay_CatBoost,file = "Stored_benchmarking_predictions/CV.98_Clay_CatBoost")
saveRDS(object = CV.98_pH_CatBoost,file = "Stored_benchmarking_predictions/CV.98_pH_CatBoost")

# Run MLR
set.seed(2025)
CV.98_SOC_MLR <- MLR_benchmarking(CV.98_data_table, "SOC_target", CV.98_folds,tuning_hyperparamaters_RF[6:7],T)
CV.98_Clay_MLR <- MLR_benchmarking(CV.98_data_table, "Clay_target", CV.98_folds,tuning_hyperparamaters_RF[6:7],T)
CV.98_pH_MLR <- MLR_benchmarking(CV.98_data_table, "pH_target", CV.98_folds,tuning_hyperparamaters_RF[6:7],T)


saveRDS(object = CV.98_SOC_MLR,file = "Stored_benchmarking_predictions/CV.98_SOC_MLR")
saveRDS(object = CV.98_Clay_MLR,file = "Stored_benchmarking_predictions/CV.98_Clay_MLR")
saveRDS(object = CV.98_pH_MLR,file = "Stored_benchmarking_predictions/CV.98_pH_MLR")

# Run SVR
set.seed(2025)

CV.98_SOC_SVR <- SVR_benchmarking(CV.98_data_table, "SOC_target", CV.98_folds, tuning_hyperparameters_SVR,T)
CV.98_Clay_SVR <- SVR_benchmarking(CV.98_data_table, "Clay_target", CV.98_folds, tuning_hyperparameters_SVR,T)
CV.98_pH_SVR <- SVR_benchmarking(CV.98_data_table, "pH_target", CV.98_folds, tuning_hyperparameters_SVR,T)

saveRDS(object = CV.98_SOC_SVR,file = "Stored_benchmarking_predictions/CV.98_SOC_SVR")
saveRDS(object = CV.98_Clay_SVR,file = "Stored_benchmarking_predictions/CV.98_Clay_SVR")
saveRDS(object = CV.98_pH_SVR,file = "Stored_benchmarking_predictions/CV.98_pH_SVR")
