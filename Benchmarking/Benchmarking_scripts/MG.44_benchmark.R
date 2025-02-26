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
MG.44_data_table <- readRDS(file = "Stored_dataset_files/MG.44_data_table.rds")

#Load folds
MG.44_folds <- readRDS(file = "Stored_split_files/MG.44_folds.rds")

#Load Hyperparameters
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
MG.44_SOC_RF <- RF_benchmarking(MG.44_data_table, "SOC_target", MG.44_folds,tuning_hyperparamaters_RF,T)
MG.44_Clay_RF <- RF_benchmarking(MG.44_data_table, "Clay_target", MG.44_folds,tuning_hyperparamaters_RF,T)
MG.44_pH_RF <- RF_benchmarking(MG.44_data_table, "pH_target", MG.44_folds,tuning_hyperparamaters_RF,T)

saveRDS(object = MG.44_SOC_RF,file = "Stored_benchmarking_predictions/MG.44_SOC_RF")
saveRDS(object = MG.44_Clay_RF,file = "Stored_benchmarking_predictions/MG.44_Clay_RF")
saveRDS(object = MG.44_pH_RF,file = "Stored_benchmarking_predictions/MG.44_pH_RF")

# Run CatBoost
set.seed(2025)

MG.44_SOC_CatBoost <- CatBoost_benchmarking(MG.44_data_table, "SOC_target", MG.44_folds, tuning_hyperparamaters_CatBoost,T)
MG.44_Clay_CatBoost <- CatBoost_benchmarking(MG.44_data_table, "Clay_target", MG.44_folds, tuning_hyperparamaters_CatBoost,T)
MG.44_pH_CatBoost <- CatBoost_benchmarking(MG.44_data_table, "pH_target", MG.44_folds, tuning_hyperparamaters_CatBoost,T)

saveRDS(object = MG.44_SOC_CatBoost,file = "Stored_benchmarking_predictions/MG.44_SOC_CatBoost")
saveRDS(object = MG.44_Clay_CatBoost,file = "Stored_benchmarking_predictions/MG.44_Clay_CatBoost")
saveRDS(object = MG.44_pH_CatBoost,file = "Stored_benchmarking_predictions/MG.44_pH_CatBoost")

# Run MLR
set.seed(2025)
MG.44_SOC_MLR <- MLR_benchmarking(MG.44_data_table, "SOC_target", MG.44_folds,tuning_hyperparamaters_RF[6:7],T)
MG.44_Clay_MLR <- MLR_benchmarking(MG.44_data_table, "Clay_target", MG.44_folds,tuning_hyperparamaters_RF[6:7],T)
MG.44_pH_MLR <- MLR_benchmarking(MG.44_data_table, "pH_target", MG.44_folds,tuning_hyperparamaters_RF[6:7],T)

saveRDS(object = MG.44_SOC_MLR,file = "Stored_benchmarking_predictions/MG.44_SOC_MLR")
saveRDS(object = MG.44_Clay_MLR,file = "Stored_benchmarking_predictions/MG.44_Clay_MLR")
saveRDS(object = MG.44_pH_MLR,file = "Stored_benchmarking_predictions/MG.44_pH_MLR")


# Run SVR
set.seed(2025)

MG.44_SOC_SVR <- SVR_benchmarking(MG.44_data_table, "SOC_target", MG.44_folds, tuning_hyperparameters_SVR,T)
MG.44_Clay_SVR <- SVR_benchmarking(MG.44_data_table, "Clay_target", MG.44_folds, tuning_hyperparameters_SVR,T)
MG.44_pH_SVR <- SVR_benchmarking(MG.44_data_table, "pH_target", MG.44_folds, tuning_hyperparameters_SVR,T)

saveRDS(object = MG.44_SOC_SVR,file = "Stored_benchmarking_predictions/MG.44_SOC_SVR")
saveRDS(object = MG.44_Clay_SVR,file = "Stored_benchmarking_predictions/MG.44_Clay_SVR")
saveRDS(object = MG.44_pH_SVR,file = "Stored_benchmarking_predictions/MG.44_pH_SVR")

