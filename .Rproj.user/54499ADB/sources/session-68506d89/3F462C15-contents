# LimeSoDa demonstrative benchmarking study

This repository contains the code for the benchmarking study in the paper "LimeSoDa: A Dataset Collection for Benchmarking of Machine Learning Regressors in Digital Soil Mapping" by Schmidinger et al. (2025).

## Structure
The folder `Stored_dataset_files` contains all the tabular datasets of LimeSoDa.
The folder `Stored_split_files` contains the folds for the outer folds of the nested cross validation.
The folder `Stored_Hyperparameter_search_files` contains the hyperparameter space for SVR, CatBoost and MLR.
The folder `benchmarking` contains the functions and benchmarking scripts. 
The folder `Stored_benchmarking_predictions` contains the predictions, observations and hyperparamter information from the different models.
The folder `Benchmarking_results_analysis` contains the analysis to create the figures in the manuscript and Appendix C.

To rerun the code it is easiest to do it through the `Benchmarking_code.Rproj`.

## Stored_dataset_files
`Benchmarking_functions.R` defines all functions needed for the benchmarking of the different models. `Benchmarking_scripts` calls these functions in individual scripts for each dataset to run the benchmarking (e.g. `B.204_benchmark.R` for B.204). If the running time of a script exceeded 48h with 128 cores on our local cluster, we created separate scripts for each model (e.g. `H.138_benchmark_CatBoost`). The benchmarking scripts read the datasets from `Stored_dataset_files` and the splits from `Stored_split_files`. It finally stores the benchmarking results in the folder `Stored_benchmarking_predictions`.

## Benchmarking_results_analysis
`Bind_results.R` calls the results from `Stored_benchmarking_predictions` and binds them to a single file named `Results_bind.rds`. The results are then analyzed and figures created in `Create_AppendixC_figures.R` and `Create_manuscript_figures.R`.

