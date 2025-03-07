library(catboost)
library(ranger)
library(doParallel)
library(foreach)
library(parallel)
library(Metrics)
library(future)
library(dplyr)
library(stats)
library(prospectr)
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
UL.120_data_table <- readRDS(file = "Stored_dataset_files/UL.120_data_table.rds")
UL.120_data_table

# Load folds
UL.120_folds <- readRDS(file = "Stored_split_files/UL.120_folds.rds")

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

UL.120_SOM_RF <- RF_benchmarking(UL.120_data_table, "SOM_target", UL.120_folds,tuning_hyperparamaters_RF,T)
UL.120_Clay_RF <- RF_benchmarking(UL.120_data_table, "Clay_target", UL.120_folds,tuning_hyperparamaters_RF,T)
UL.120_pH_RF <- RF_benchmarking(UL.120_data_table, "pH_target", UL.120_folds,tuning_hyperparamaters_RF,T)

saveRDS(object = UL.120_SOM_RF,file = "Stored_benchmarking_predictions/UL.120_SOM_RF")
saveRDS(object = UL.120_Clay_RF,file = "Stored_benchmarking_predictions/UL.120_Clay_RF")
saveRDS(object = UL.120_pH_RF,file = "Stored_benchmarking_predictions/UL.120_pH_RF")

# Run CatBoost
set.seed(2025)

UL.120_SOM_CatBoost <- CatBoost_benchmarking(UL.120_data_table, "SOM_target", UL.120_folds, tuning_hyperparamaters_CatBoost,T)
UL.120_Clay_CatBoost <- CatBoost_benchmarking(UL.120_data_table, "Clay_target", UL.120_folds, tuning_hyperparamaters_CatBoost,T)
UL.120_pH_CatBoost <- CatBoost_benchmarking(UL.120_data_table, "pH_target", UL.120_folds, tuning_hyperparamaters_CatBoost,T)

saveRDS(object = UL.120_SOM_CatBoost,file = "Stored_benchmarking_predictions/UL.120_SOM_CatBoost")
saveRDS(object = UL.120_Clay_CatBoost,file = "Stored_benchmarking_predictions/UL.120_Clay_CatBoost")
saveRDS(object = UL.120_pH_CatBoost,file = "Stored_benchmarking_predictions/UL.120_pH_CatBoost")

# Run MLR
set.seed(2025)
UL.120_SOM_MLR <- MLR_benchmarking(UL.120_data_table, "SOM_target", UL.120_folds,tuning_hyperparamaters_RF[6:7],T)
UL.120_Clay_MLR <- MLR_benchmarking(UL.120_data_table, "Clay_target", UL.120_folds,tuning_hyperparamaters_RF[6:7],T)
UL.120_pH_MLR <- MLR_benchmarking(UL.120_data_table, "pH_target", UL.120_folds,tuning_hyperparamaters_RF[6:7],T)

saveRDS(object = UL.120_SOM_MLR,file = "Stored_benchmarking_predictions/UL.120_SOM_MLR")
saveRDS(object = UL.120_Clay_MLR,file = "Stored_benchmarking_predictions/UL.120_Clay_MLR")
saveRDS(object = UL.120_pH_MLR,file = "Stored_benchmarking_predictions/UL.120_pH_MLR")


# Run SVR
set.seed(2025)

UL.120_SOM_SVR <- SVR_benchmarking(UL.120_data_table, "SOM_target", UL.120_folds, tuning_hyperparameters_SVR,T)
UL.120_Clay_SVR <- SVR_benchmarking(UL.120_data_table, "Clay_target", UL.120_folds, tuning_hyperparameters_SVR,T)
UL.120_pH_SVR <- SVR_benchmarking(UL.120_data_table, "pH_target", UL.120_folds, tuning_hyperparameters_SVR,T)

saveRDS(object = UL.120_SOM_SVR,file = "Stored_benchmarking_predictions/UL.120_SOM_SVR")
saveRDS(object = UL.120_Clay_SVR,file = "Stored_benchmarking_predictions/UL.120_Clay_SVR")
saveRDS(object = UL.120_pH_SVR,file = "Stored_benchmarking_predictions/UL.120_pH_SVR")