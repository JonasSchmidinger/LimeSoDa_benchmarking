# In this script we simply calculate the evaluation metrics for the predictions of the different models for the different properties and datasets. We then store the results in a data frame for further evaluation



library(dplyr)
library(ggplot2)
source("Benchmarking/Benchmarking_functions.R")
library(ggtext)
library(tidyr)
library(stringr)



#SSP.460
SSP.460_SOC_RF<- readRDS("Stored_benchmarking_predictions/SSP.460_SOC_RF")
SSP.460_Clay_RF<- readRDS("Stored_benchmarking_predictions/SSP.460_Clay_RF")
SSP.460_pH_RF<- readRDS("Stored_benchmarking_predictions/SSP.460_pH_RF")

SSP.460_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.460_SOC_CatBoost")
SSP.460_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.460_Clay_CatBoost")
SSP.460_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.460_pH_CatBoost")

SSP.460_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SSP.460_SOC_MLR")
SSP.460_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SSP.460_Clay_MLR")
SSP.460_pH_MLR<- readRDS("Stored_benchmarking_predictions/SSP.460_pH_MLR")

SSP.460_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SSP.460_SOC_SVR")
SSP.460_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SSP.460_Clay_SVR")
SSP.460_pH_SVR<- readRDS("Stored_benchmarking_predictions/SSP.460_pH_SVR")



SSP.460_SOC_Point_performance_RF<- cbind(point_prediction_performance(SSP.460_SOC_RF$Predictions$Predicted,SSP.460_SOC_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 460, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.460_SOC_CatBoost$Predictions$Predicted,SSP.460_SOC_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 460, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SSP.460_SOC_MLR$Predictions$Predicted,SSP.460_SOC_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 460, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SSP.460_SOC_SVR$Predictions$Predicted,SSP.460_SOC_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 460, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))


SSP.460_Clay_Point_performance_RF<- cbind(point_prediction_performance(SSP.460_Clay_RF$Predictions$Predicted,SSP.460_Clay_RF$Predictions$Measured),
                                          data_frame("learning_algorithm"="RF","Number_of_samples" = 460, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.460_Clay_CatBoost$Predictions$Predicted,SSP.460_Clay_CatBoost$Predictions$Measured),
                                                data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 460, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SSP.460_Clay_MLR$Predictions$Predicted,SSP.460_Clay_MLR$Predictions$Measured),
                                           data_frame("learning_algorithm"="MLR","Number_of_samples" = 460, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SSP.460_Clay_SVR$Predictions$Predicted,SSP.460_Clay_SVR$Predictions$Measured),
                                           data_frame("learning_algorithm"="SVR","Number_of_samples" = 460, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))


SSP.460_pH_Point_performance_RF<- cbind(point_prediction_performance(SSP.460_pH_RF$Predictions$Predicted,SSP.460_pH_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 460, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.460_pH_CatBoost$Predictions$Predicted,SSP.460_pH_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 460, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_pH_Point_performance_MLR<- cbind(point_prediction_performance(SSP.460_pH_MLR$Predictions$Predicted,SSP.460_pH_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 460, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))
SSP.460_pH_Point_performance_SVR<- cbind(point_prediction_performance(SSP.460_pH_SVR$Predictions$Predicted,SSP.460_pH_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 460, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="SSP.460"))

SSP.460_SOC_Point_performance_RF
SSP.460_SOC_Point_performance_CatBoost
SSP.460_SOC_Point_performance_MLR
SSP.460_SOC_Point_performance_SVR

SSP.460_Clay_Point_performance_RF
SSP.460_Clay_Point_performance_CatBoost
SSP.460_Clay_Point_performance_MLR
SSP.460_Clay_Point_performance_SVR

SSP.460_pH_Point_performance_RF
SSP.460_pH_Point_performance_CatBoost
SSP.460_pH_Point_performance_MLR
SSP.460_pH_Point_performance_SVR

#BB.250
BB.250_SOC_RF<- readRDS("Stored_benchmarking_predictions/BB.250_SOC_RF")
BB.250_Clay_RF<- readRDS("Stored_benchmarking_predictions/BB.250_Clay_RF")
BB.250_pH_RF<- readRDS("Stored_benchmarking_predictions/BB.250_pH_RF")

BB.250_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.250_SOC_CatBoost")
BB.250_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.250_Clay_CatBoost")
BB.250_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.250_pH_CatBoost")

BB.250_SOC_MLR<- readRDS("Stored_benchmarking_predictions/BB.250_SOC_MLR")
BB.250_Clay_MLR<- readRDS("Stored_benchmarking_predictions/BB.250_Clay_MLR")
BB.250_pH_MLR<- readRDS("Stored_benchmarking_predictions/BB.250_pH_MLR")

BB.250_SOC_SVR<- readRDS("Stored_benchmarking_predictions/BB.250_SOC_SVR")
BB.250_Clay_SVR<- readRDS("Stored_benchmarking_predictions/BB.250_Clay_SVR")
BB.250_pH_SVR<- readRDS("Stored_benchmarking_predictions/BB.250_pH_SVR")


BB.250_SOC_Point_performance_RF<- cbind(point_prediction_performance(BB.250_SOC_RF$Predictions$Predicted,BB.250_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.250_SOC_CatBoost$Predictions$Predicted,BB.250_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_SOC_Point_performance_MLR<- cbind(point_prediction_performance(BB.250_SOC_MLR$Predictions$Predicted,BB.250_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_SOC_Point_performance_SVR<- cbind(point_prediction_performance(BB.250_SOC_SVR$Predictions$Predicted,BB.250_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))

BB.250_Clay_Point_performance_RF<- cbind(point_prediction_performance(BB.250_Clay_RF$Predictions$Predicted,BB.250_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.250_Clay_CatBoost$Predictions$Predicted,BB.250_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_Clay_Point_performance_MLR<- cbind(point_prediction_performance(BB.250_Clay_MLR$Predictions$Predicted,BB.250_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_Clay_Point_performance_SVR<- cbind(point_prediction_performance(BB.250_Clay_SVR$Predictions$Predicted,BB.250_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))

BB.250_pH_Point_performance_RF<- cbind(point_prediction_performance(BB.250_pH_RF$Predictions$Predicted,BB.250_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.250_pH_CatBoost$Predictions$Predicted,BB.250_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_pH_Point_performance_MLR<- cbind(point_prediction_performance(BB.250_pH_MLR$Predictions$Predicted,BB.250_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))
BB.250_pH_Point_performance_SVR<- cbind(point_prediction_performance(BB.250_pH_SVR$Predictions$Predicted,BB.250_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.250"))






BB.250_SOC_Point_performance_RF
BB.250_SOC_Point_performance_CatBoost
BB.250_SOC_Point_performance_MLR
BB.250_SOC_Point_performance_SVR

BB.250_Clay_Point_performance_RF
BB.250_Clay_Point_performance_CatBoost
BB.250_Clay_Point_performance_MLR
BB.250_Clay_Point_performance_SVR

BB.250_pH_Point_performance_RF
BB.250_pH_Point_performance_CatBoost
BB.250_pH_Point_performance_MLR
BB.250_pH_Point_performance_SVR





#SP.231
SP.231_SOM_RF<- readRDS("Stored_benchmarking_predictions/SP.231_SOM_RF")
SP.231_Clay_RF<- readRDS("Stored_benchmarking_predictions/SP.231_Clay_RF")
SP.231_pH_RF<- readRDS("Stored_benchmarking_predictions/SP.231_pH_RF")

SP.231_SOM_CatBoost<- readRDS("Stored_benchmarking_predictions/SP.231_SOM_CatBoost")
SP.231_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SP.231_Clay_CatBoost")
SP.231_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SP.231_pH_CatBoost")

SP.231_SOM_MLR<- readRDS("Stored_benchmarking_predictions/SP.231_SOM_MLR")
SP.231_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SP.231_Clay_MLR")
SP.231_pH_MLR<- readRDS("Stored_benchmarking_predictions/SP.231_pH_MLR")

SP.231_SOM_SVR<- readRDS("Stored_benchmarking_predictions/SP.231_SOM_SVR")
SP.231_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SP.231_Clay_SVR")
SP.231_pH_SVR<- readRDS("Stored_benchmarking_predictions/SP.231_pH_SVR")

SP.231_SOM_Point_performance_RF<- cbind(point_prediction_performance(SP.231_SOM_RF$Predictions$Predicted,SP.231_SOM_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 231, "Property"="SOM" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_SOM_Point_performance_CatBoost<- cbind(point_prediction_performance(SP.231_SOM_CatBoost$Predictions$Predicted,SP.231_SOM_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 231, "Property"="SOM" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_SOM_Point_performance_MLR<- cbind(point_prediction_performance(SP.231_SOM_MLR$Predictions$Predicted,SP.231_SOM_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 231, "Property"="SOM" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_SOM_Point_performance_SVR<- cbind(point_prediction_performance(SP.231_SOM_SVR$Predictions$Predicted,SP.231_SOM_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 231, "Property"="SOM" ,Sensors = c("vis-NIR"),Dataset="SP.231"))

SP.231_Clay_Point_performance_RF<- cbind(point_prediction_performance(SP.231_Clay_RF$Predictions$Predicted,SP.231_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 231, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SP.231_Clay_CatBoost$Predictions$Predicted,SP.231_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 231, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SP.231_Clay_MLR$Predictions$Predicted,SP.231_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 231, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SP.231_Clay_SVR$Predictions$Predicted,SP.231_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 231, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SP.231"))

SP.231_pH_Point_performance_RF<- cbind(point_prediction_performance(SP.231_pH_RF$Predictions$Predicted,SP.231_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 231, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SP.231_pH_CatBoost$Predictions$Predicted,SP.231_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 231, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_pH_Point_performance_MLR<- cbind(point_prediction_performance(SP.231_pH_MLR$Predictions$Predicted,SP.231_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 231, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SP.231"))
SP.231_pH_Point_performance_SVR<- cbind(point_prediction_performance(SP.231_pH_SVR$Predictions$Predicted,SP.231_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 231, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SP.231"))


SP.231_SOM_Point_performance_RF
SP.231_SOM_Point_performance_CatBoost
SP.231_SOM_Point_performance_MLR
SP.231_SOM_Point_performance_SVR

SP.231_Clay_Point_performance_RF
SP.231_Clay_Point_performance_CatBoost
SP.231_Clay_Point_performance_MLR
SP.231_Clay_Point_performance_SVR

SP.231_pH_Point_performance_RF
SP.231_pH_Point_performance_CatBoost
SP.231_pH_Point_performance_MLR
SP.231_pH_Point_performance_SVR

#B.204
B.204_SOC_RF<- readRDS("Stored_benchmarking_predictions/B.204_SOC_RF")
B.204_Clay_RF<- readRDS("Stored_benchmarking_predictions/B.204_Clay_RF")
B.204_pH_RF<- readRDS("Stored_benchmarking_predictions/B.204_pH_RF")

B.204_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/B.204_SOC_CatBoost")
B.204_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/B.204_Clay_CatBoost")
B.204_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/B.204_pH_CatBoost")

B.204_SOC_MLR<- readRDS("Stored_benchmarking_predictions/B.204_SOC_MLR")
B.204_Clay_MLR<- readRDS("Stored_benchmarking_predictions/B.204_Clay_MLR")
B.204_pH_MLR<- readRDS("Stored_benchmarking_predictions/B.204_pH_MLR")

B.204_SOC_SVR<- readRDS("Stored_benchmarking_predictions/B.204_SOC_SVR")
B.204_Clay_SVR<- readRDS("Stored_benchmarking_predictions/B.204_Clay_SVR")
B.204_pH_SVR<- readRDS("Stored_benchmarking_predictions/B.204_pH_SVR")


B.204_SOC_Point_performance_RF<- cbind(point_prediction_performance(B.204_SOC_RF$Predictions$Predicted,B.204_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 204, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(B.204_SOC_CatBoost$Predictions$Predicted,B.204_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 204, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_SOC_Point_performance_MLR<- cbind(point_prediction_performance(B.204_SOC_MLR$Predictions$Predicted,B.204_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 204, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_SOC_Point_performance_SVR<- cbind(point_prediction_performance(B.204_SOC_SVR$Predictions$Predicted,B.204_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 204, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))

B.204_Clay_Point_performance_RF<- cbind(point_prediction_performance(B.204_Clay_RF$Predictions$Predicted,B.204_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 204, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(B.204_Clay_CatBoost$Predictions$Predicted,B.204_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 204, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_Clay_Point_performance_MLR<- cbind(point_prediction_performance(B.204_Clay_MLR$Predictions$Predicted,B.204_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 204, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_Clay_Point_performance_SVR<- cbind(point_prediction_performance(B.204_Clay_SVR$Predictions$Predicted,B.204_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 204, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))

B.204_pH_Point_performance_RF<- cbind(point_prediction_performance(B.204_pH_RF$Predictions$Predicted,B.204_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 204, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(B.204_pH_CatBoost$Predictions$Predicted,B.204_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 204, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_pH_Point_performance_MLR<- cbind(point_prediction_performance(B.204_pH_MLR$Predictions$Predicted,B.204_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 204, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))
B.204_pH_Point_performance_SVR<- cbind(point_prediction_performance(B.204_pH_SVR$Predictions$Predicted,B.204_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 204, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="B.204"))

B.204_SOC_Point_performance_RF
B.204_SOC_Point_performance_CatBoost
B.204_SOC_Point_performance_MLR
B.204_SOC_Point_performance_SVR

B.204_Clay_Point_performance_RF
B.204_Clay_Point_performance_CatBoost
B.204_Clay_Point_performance_MLR
B.204_Clay_Point_performance_SVR

B.204_pH_Point_performance_RF
B.204_pH_Point_performance_CatBoost
B.204_pH_Point_performance_MLR
B.204_pH_Point_performance_SVR





#G.150
G.150_SOC_RF<- readRDS("Stored_benchmarking_predictions/G.150_SOC_RF")
G.150_Clay_RF<- readRDS("Stored_benchmarking_predictions/G.150_Clay_RF")
G.150_pH_RF<- readRDS("Stored_benchmarking_predictions/G.150_pH_RF")

G.150_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/G.150_SOC_CatBoost")
G.150_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/G.150_Clay_CatBoost")
G.150_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/G.150_pH_CatBoost")

G.150_SOC_MLR<- readRDS("Stored_benchmarking_predictions/G.150_SOC_MLR")
G.150_Clay_MLR<- readRDS("Stored_benchmarking_predictions/G.150_Clay_MLR")
G.150_pH_MLR<- readRDS("Stored_benchmarking_predictions/G.150_pH_MLR")

G.150_SOC_SVR<- readRDS("Stored_benchmarking_predictions/G.150_SOC_SVR")
G.150_Clay_SVR<- readRDS("Stored_benchmarking_predictions/G.150_Clay_SVR")
G.150_pH_SVR<- readRDS("Stored_benchmarking_predictions/G.150_pH_SVR")


G.150_SOC_Point_performance_RF<- cbind(point_prediction_performance(G.150_SOC_RF$Predictions$Predicted,G.150_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 150, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(G.150_SOC_CatBoost$Predictions$Predicted,G.150_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 150, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_SOC_Point_performance_MLR<- cbind(point_prediction_performance(G.150_SOC_MLR$Predictions$Predicted,G.150_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 150, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_SOC_Point_performance_SVR<- cbind(point_prediction_performance(G.150_SOC_SVR$Predictions$Predicted,G.150_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 150, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))

G.150_Clay_Point_performance_RF<- cbind(point_prediction_performance(G.150_Clay_RF$Predictions$Predicted,G.150_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 150, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(G.150_Clay_CatBoost$Predictions$Predicted,G.150_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 150, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_Clay_Point_performance_MLR<- cbind(point_prediction_performance(G.150_Clay_MLR$Predictions$Predicted,G.150_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 150, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_Clay_Point_performance_SVR<- cbind(point_prediction_performance(G.150_Clay_SVR$Predictions$Predicted,G.150_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 150, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))

G.150_pH_Point_performance_RF<- cbind(point_prediction_performance(G.150_pH_RF$Predictions$Predicted,G.150_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 150, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(G.150_pH_CatBoost$Predictions$Predicted,G.150_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 150, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_pH_Point_performance_MLR<- cbind(point_prediction_performance(G.150_pH_MLR$Predictions$Predicted,G.150_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 150, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))
G.150_pH_Point_performance_SVR<- cbind(point_prediction_performance(G.150_pH_SVR$Predictions$Predicted,G.150_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 150, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="G.150"))

G.150_SOC_Point_performance_RF
G.150_SOC_Point_performance_CatBoost
G.150_SOC_Point_performance_MLR
G.150_SOC_Point_performance_SVR

G.150_Clay_Point_performance_RF
G.150_Clay_Point_performance_CatBoost
G.150_Clay_Point_performance_MLR
G.150_Clay_Point_performance_SVR

G.150_pH_Point_performance_RF
G.150_pH_Point_performance_CatBoost
G.150_pH_Point_performance_MLR
G.150_pH_Point_performance_SVR








#H.138
H.138_SOC_RF<- readRDS("Stored_benchmarking_predictions/H.138_SOC_RF")
H.138_Clay_RF<- readRDS("Stored_benchmarking_predictions/H.138_Clay_RF")
H.138_pH_RF<- readRDS("Stored_benchmarking_predictions/H.138_pH_RF")

H.138_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/H.138_SOC_CatBoost")
H.138_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/H.138_Clay_CatBoost")
H.138_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/H.138_pH_CatBoost")

H.138_SOC_MLR<- readRDS("Stored_benchmarking_predictions/H.138_SOC_MLR")
H.138_Clay_MLR<- readRDS("Stored_benchmarking_predictions/H.138_Clay_MLR")
H.138_pH_MLR<- readRDS("Stored_benchmarking_predictions/H.138_pH_MLR")

H.138_SOC_SVR<- readRDS("Stored_benchmarking_predictions/H.138_SOC_SVR")
H.138_Clay_SVR<- readRDS("Stored_benchmarking_predictions/H.138_Clay_SVR")
H.138_pH_SVR<- readRDS("Stored_benchmarking_predictions/H.138_pH_SVR")


H.138_SOC_Point_performance_RF<- cbind(point_prediction_performance(H.138_SOC_RF$Predictions$Predicted,H.138_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 138, "Property"="SOC" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(H.138_SOC_CatBoost$Predictions$Predicted,H.138_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 138, "Property"="SOC" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_SOC_Point_performance_MLR<- cbind(point_prediction_performance(H.138_SOC_MLR$Predictions$Predicted,H.138_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 138, "Property"="SOC" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_SOC_Point_performance_SVR<- cbind(point_prediction_performance(H.138_SOC_SVR$Predictions$Predicted,H.138_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 138, "Property"="SOC" ,Sensors = c("MIR"),Dataset="H.138"))

H.138_Clay_Point_performance_RF<- cbind(point_prediction_performance(H.138_Clay_RF$Predictions$Predicted,H.138_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 138, "Property"="Clay" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(H.138_Clay_CatBoost$Predictions$Predicted,H.138_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 138, "Property"="Clay" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_Clay_Point_performance_MLR<- cbind(point_prediction_performance(H.138_Clay_MLR$Predictions$Predicted,H.138_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 138, "Property"="Clay" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_Clay_Point_performance_SVR<- cbind(point_prediction_performance(H.138_Clay_SVR$Predictions$Predicted,H.138_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 138, "Property"="Clay" ,Sensors = c("MIR"),Dataset="H.138"))

H.138_pH_Point_performance_RF<- cbind(point_prediction_performance(H.138_pH_RF$Predictions$Predicted,H.138_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 138, "Property"="pH" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(H.138_pH_CatBoost$Predictions$Predicted,H.138_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 138, "Property"="pH" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_pH_Point_performance_MLR<- cbind(point_prediction_performance(H.138_pH_MLR$Predictions$Predicted,H.138_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 138, "Property"="pH" ,Sensors = c("MIR"),Dataset="H.138"))
H.138_pH_Point_performance_SVR<- cbind(point_prediction_performance(H.138_pH_SVR$Predictions$Predicted,H.138_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 138, "Property"="pH" ,Sensors = c("MIR"),Dataset="H.138"))

H.138_SOC_Point_performance_RF
H.138_SOC_Point_performance_CatBoost
H.138_SOC_Point_performance_MLR
H.138_SOC_Point_performance_SVR

H.138_Clay_Point_performance_RF
H.138_Clay_Point_performance_CatBoost
H.138_Clay_Point_performance_MLR
H.138_Clay_Point_performance_SVR

H.138_pH_Point_performance_RF
H.138_pH_Point_performance_CatBoost
H.138_pH_Point_performance_MLR
H.138_pH_Point_performance_SVR











#SL.125
SL.125_SOM_RF<- readRDS("Stored_benchmarking_predictions/SL.125_SOM_RF")
SL.125_Clay_RF<- readRDS("Stored_benchmarking_predictions/SL.125_Clay_RF")
SL.125_pH_RF<- readRDS("Stored_benchmarking_predictions/SL.125_pH_RF")

SL.125_SOM_CatBoost<- readRDS("Stored_benchmarking_predictions/SL.125_SOM_CatBoost")
SL.125_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SL.125_Clay_CatBoost")
SL.125_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SL.125_pH_CatBoost")

SL.125_SOM_MLR<- readRDS("Stored_benchmarking_predictions/SL.125_SOM_MLR")
SL.125_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SL.125_Clay_MLR")
SL.125_pH_MLR<- readRDS("Stored_benchmarking_predictions/SL.125_pH_MLR")

SL.125_SOM_SVR<- readRDS("Stored_benchmarking_predictions/SL.125_SOM_SVR")
SL.125_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SL.125_Clay_SVR")
SL.125_pH_SVR<- readRDS("Stored_benchmarking_predictions/SL.125_pH_SVR")

SL.125_SOM_Point_performance_RF<- cbind(point_prediction_performance(SL.125_SOM_RF$Predictions$Predicted,SL.125_SOM_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 125, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_SOM_Point_performance_CatBoost<- cbind(point_prediction_performance(SL.125_SOM_CatBoost$Predictions$Predicted,SL.125_SOM_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 125, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_SOM_Point_performance_MLR<- cbind(point_prediction_performance(SL.125_SOM_MLR$Predictions$Predicted,SL.125_SOM_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 125, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_SOM_Point_performance_SVR<- cbind(point_prediction_performance(SL.125_SOM_SVR$Predictions$Predicted,SL.125_SOM_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 125, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))

SL.125_Clay_Point_performance_RF<- cbind(point_prediction_performance(SL.125_Clay_RF$Predictions$Predicted,SL.125_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 125, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SL.125_Clay_CatBoost$Predictions$Predicted,SL.125_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 125, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SL.125_Clay_MLR$Predictions$Predicted,SL.125_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 125, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SL.125_Clay_SVR$Predictions$Predicted,SL.125_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 125, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))

SL.125_pH_Point_performance_RF<- cbind(point_prediction_performance(SL.125_pH_RF$Predictions$Predicted,SL.125_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 125, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SL.125_pH_CatBoost$Predictions$Predicted,SL.125_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 125, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_pH_Point_performance_MLR<- cbind(point_prediction_performance(SL.125_pH_MLR$Predictions$Predicted,SL.125_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 125, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))
SL.125_pH_Point_performance_SVR<- cbind(point_prediction_performance(SL.125_pH_SVR$Predictions$Predicted,SL.125_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 125, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="SL.125"))

SL.125_SOM_Point_performance_RF
SL.125_SOM_Point_performance_CatBoost
SL.125_SOM_Point_performance_MLR
SL.125_SOM_Point_performance_SVR

SL.125_Clay_Point_performance_RF
SL.125_Clay_Point_performance_CatBoost
SL.125_Clay_Point_performance_MLR
SL.125_Clay_Point_performance_SVR

SL.125_pH_Point_performance_RF
SL.125_pH_Point_performance_CatBoost
SL.125_pH_Point_performance_MLR
SL.125_pH_Point_performance_SVR









#UL.120
UL.120_SOM_RF<- readRDS("Stored_benchmarking_predictions/UL.120_SOM_RF")
UL.120_Clay_RF<- readRDS("Stored_benchmarking_predictions/UL.120_Clay_RF")
UL.120_pH_RF<- readRDS("Stored_benchmarking_predictions/UL.120_pH_RF")

UL.120_SOM_CatBoost<- readRDS("Stored_benchmarking_predictions/UL.120_SOM_CatBoost")
UL.120_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/UL.120_Clay_CatBoost")
UL.120_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/UL.120_pH_CatBoost")

UL.120_SOM_MLR<- readRDS("Stored_benchmarking_predictions/UL.120_SOM_MLR")
UL.120_Clay_MLR<- readRDS("Stored_benchmarking_predictions/UL.120_Clay_MLR")
UL.120_pH_MLR<- readRDS("Stored_benchmarking_predictions/UL.120_pH_MLR")

UL.120_SOM_SVR<- readRDS("Stored_benchmarking_predictions/UL.120_SOM_SVR")
UL.120_Clay_SVR<- readRDS("Stored_benchmarking_predictions/UL.120_Clay_SVR")
UL.120_pH_SVR<- readRDS("Stored_benchmarking_predictions/UL.120_pH_SVR")


UL.120_SOM_Point_performance_RF<- cbind(point_prediction_performance(UL.120_SOM_RF$Predictions$Predicted,UL.120_SOM_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 120, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_SOM_Point_performance_CatBoost<- cbind(point_prediction_performance(UL.120_SOM_CatBoost$Predictions$Predicted,UL.120_SOM_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 120, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_SOM_Point_performance_MLR<- cbind(point_prediction_performance(UL.120_SOM_MLR$Predictions$Predicted,UL.120_SOM_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 120, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_SOM_Point_performance_SVR<- cbind(point_prediction_performance(UL.120_SOM_SVR$Predictions$Predicted,UL.120_SOM_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 120, "Property"="SOM" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))

UL.120_Clay_Point_performance_RF<- cbind(point_prediction_performance(UL.120_Clay_RF$Predictions$Predicted,UL.120_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 120, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(UL.120_Clay_CatBoost$Predictions$Predicted,UL.120_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 120, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_Clay_Point_performance_MLR<- cbind(point_prediction_performance(UL.120_Clay_MLR$Predictions$Predicted,UL.120_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 120, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_Clay_Point_performance_SVR<- cbind(point_prediction_performance(UL.120_Clay_SVR$Predictions$Predicted,UL.120_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 120, "Property"="Clay" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))

UL.120_pH_Point_performance_RF<- cbind(point_prediction_performance(UL.120_pH_RF$Predictions$Predicted,UL.120_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 120, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(UL.120_pH_CatBoost$Predictions$Predicted,UL.120_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 120, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_pH_Point_performance_MLR<- cbind(point_prediction_performance(UL.120_pH_MLR$Predictions$Predicted,UL.120_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 120, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))
UL.120_pH_Point_performance_SVR<- cbind(point_prediction_performance(UL.120_pH_SVR$Predictions$Predicted,UL.120_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 120, "Property"="pH" ,Sensors = c("vis-NIR, ERa"),Dataset="UL.120"))

UL.120_SOM_Point_performance_RF
UL.120_SOM_Point_performance_CatBoost
UL.120_SOM_Point_performance_MLR
UL.120_SOM_Point_performance_SVR

UL.120_Clay_Point_performance_RF
UL.120_Clay_Point_performance_CatBoost
UL.120_Clay_Point_performance_MLR
UL.120_Clay_Point_performance_SVR

UL.120_pH_Point_performance_RF
UL.120_pH_Point_performance_CatBoost
UL.120_pH_Point_performance_MLR
UL.120_pH_Point_performance_SVR













#MG.112
MG.112_SOC_RF<- readRDS("Stored_benchmarking_predictions/MG.112_SOC_RF")
MG.112_Clay_RF<- readRDS("Stored_benchmarking_predictions/MG.112_Clay_RF")
MG.112_pH_RF<- readRDS("Stored_benchmarking_predictions/MG.112_pH_RF")

MG.112_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.112_SOC_CatBoost")
MG.112_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.112_Clay_CatBoost")
MG.112_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.112_pH_CatBoost")

MG.112_SOC_MLR<- readRDS("Stored_benchmarking_predictions/MG.112_SOC_MLR")
MG.112_Clay_MLR<- readRDS("Stored_benchmarking_predictions/MG.112_Clay_MLR")
MG.112_pH_MLR<- readRDS("Stored_benchmarking_predictions/MG.112_pH_MLR")

MG.112_SOC_SVR<- readRDS("Stored_benchmarking_predictions/MG.112_SOC_SVR")
MG.112_Clay_SVR<- readRDS("Stored_benchmarking_predictions/MG.112_Clay_SVR")
MG.112_pH_SVR<- readRDS("Stored_benchmarking_predictions/MG.112_pH_SVR")


MG.112_SOC_Point_performance_RF<- cbind(point_prediction_performance(MG.112_SOC_RF$Predictions$Predicted,MG.112_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.112_SOC_CatBoost$Predictions$Predicted,MG.112_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_SOC_Point_performance_MLR<- cbind(point_prediction_performance(MG.112_SOC_MLR$Predictions$Predicted,MG.112_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_SOC_Point_performance_SVR<- cbind(point_prediction_performance(MG.112_SOC_SVR$Predictions$Predicted,MG.112_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))

MG.112_Clay_Point_performance_RF<- cbind(point_prediction_performance(MG.112_Clay_RF$Predictions$Predicted,MG.112_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.112_Clay_CatBoost$Predictions$Predicted,MG.112_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_Clay_Point_performance_MLR<- cbind(point_prediction_performance(MG.112_Clay_MLR$Predictions$Predicted,MG.112_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_Clay_Point_performance_SVR<- cbind(point_prediction_performance(MG.112_Clay_SVR$Predictions$Predicted,MG.112_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))

MG.112_pH_Point_performance_RF<- cbind(point_prediction_performance(MG.112_pH_RF$Predictions$Predicted,MG.112_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.112_pH_CatBoost$Predictions$Predicted,MG.112_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_pH_Point_performance_MLR<- cbind(point_prediction_performance(MG.112_pH_MLR$Predictions$Predicted,MG.112_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))
MG.112_pH_Point_performance_SVR<- cbind(point_prediction_performance(MG.112_pH_SVR$Predictions$Predicted,MG.112_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("DEM, ERa, RSS,  VI"),Dataset="MG.112"))

MG.112_SOC_Point_performance_RF
MG.112_SOC_Point_performance_CatBoost
MG.112_SOC_Point_performance_MLR
MG.112_SOC_Point_performance_SVR

MG.112_Clay_Point_performance_RF
MG.112_Clay_Point_performance_CatBoost
MG.112_Clay_Point_performance_MLR
MG.112_Clay_Point_performance_SVR

MG.112_pH_Point_performance_RF
MG.112_pH_Point_performance_CatBoost
MG.112_pH_Point_performance_MLR
MG.112_pH_Point_performance_SVR













#NRW.115
NRW.115_SOC_RF<- readRDS("Stored_benchmarking_predictions/NRW.115_SOC_RF")
NRW.115_Clay_RF<- readRDS("Stored_benchmarking_predictions/NRW.115_Clay_RF")
NRW.115_pH_RF<- readRDS("Stored_benchmarking_predictions/NRW.115_pH_RF")

NRW.115_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.115_SOC_CatBoost")
NRW.115_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.115_Clay_CatBoost")
NRW.115_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.115_pH_CatBoost")

NRW.115_SOC_MLR<- readRDS("Stored_benchmarking_predictions/NRW.115_SOC_MLR")
NRW.115_Clay_MLR<- readRDS("Stored_benchmarking_predictions/NRW.115_Clay_MLR")
NRW.115_pH_MLR<- readRDS("Stored_benchmarking_predictions/NRW.115_pH_MLR")

NRW.115_SOC_SVR<- readRDS("Stored_benchmarking_predictions/NRW.115_SOC_SVR")
NRW.115_Clay_SVR<- readRDS("Stored_benchmarking_predictions/NRW.115_Clay_SVR")
NRW.115_pH_SVR<- readRDS("Stored_benchmarking_predictions/NRW.115_pH_SVR")


NRW.115_SOC_Point_performance_RF<- cbind(point_prediction_performance(NRW.115_SOC_RF$Predictions$Predicted,NRW.115_SOC_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 115, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.115_SOC_CatBoost$Predictions$Predicted,NRW.115_SOC_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 115, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_SOC_Point_performance_MLR<- cbind(point_prediction_performance(NRW.115_SOC_MLR$Predictions$Predicted,NRW.115_SOC_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 115, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_SOC_Point_performance_SVR<- cbind(point_prediction_performance(NRW.115_SOC_SVR$Predictions$Predicted,NRW.115_SOC_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 115, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.115"))

NRW.115_Clay_Point_performance_RF<- cbind(point_prediction_performance(NRW.115_Clay_RF$Predictions$Predicted,NRW.115_Clay_RF$Predictions$Measured),
                                          data_frame("learning_algorithm"="RF","Number_of_samples" = 115, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.115_Clay_CatBoost$Predictions$Predicted,NRW.115_Clay_CatBoost$Predictions$Measured),
                                                data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 115, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_Clay_Point_performance_MLR<- cbind(point_prediction_performance(NRW.115_Clay_MLR$Predictions$Predicted,NRW.115_Clay_MLR$Predictions$Measured),
                                           data_frame("learning_algorithm"="MLR","Number_of_samples" = 115, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_Clay_Point_performance_SVR<- cbind(point_prediction_performance(NRW.115_Clay_SVR$Predictions$Predicted,NRW.115_Clay_SVR$Predictions$Measured),
                                           data_frame("learning_algorithm"="SVR","Number_of_samples" = 115, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.115"))

NRW.115_pH_Point_performance_RF<- cbind(point_prediction_performance(NRW.115_pH_RF$Predictions$Predicted,NRW.115_pH_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 115, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.115_pH_CatBoost$Predictions$Predicted,NRW.115_pH_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 115, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_pH_Point_performance_MLR<- cbind(point_prediction_performance(NRW.115_pH_MLR$Predictions$Predicted,NRW.115_pH_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 115, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.115"))
NRW.115_pH_Point_performance_SVR<- cbind(point_prediction_performance(NRW.115_pH_SVR$Predictions$Predicted,NRW.115_pH_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 115, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.115"))

NRW.115_SOC_Point_performance_RF
NRW.115_SOC_Point_performance_CatBoost
NRW.115_SOC_Point_performance_MLR
NRW.115_SOC_Point_performance_SVR

NRW.115_Clay_Point_performance_RF
NRW.115_Clay_Point_performance_CatBoost
NRW.115_Clay_Point_performance_MLR
NRW.115_Clay_Point_performance_SVR

NRW.115_pH_Point_performance_RF
NRW.115_pH_Point_performance_CatBoost
NRW.115_pH_Point_performance_MLR
NRW.115_pH_Point_performance_SVR

#SA.112
SA.112_SOC_RF<- readRDS("Stored_benchmarking_predictions/SA.112_SOC_RF")
SA.112_Clay_RF<- readRDS("Stored_benchmarking_predictions/SA.112_Clay_RF")
SA.112_pH_RF<- readRDS("Stored_benchmarking_predictions/SA.112_pH_RF")

SA.112_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SA.112_SOC_CatBoost")
SA.112_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SA.112_Clay_CatBoost")
SA.112_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SA.112_pH_CatBoost")

SA.112_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SA.112_SOC_MLR")
SA.112_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SA.112_Clay_MLR")
SA.112_pH_MLR<- readRDS("Stored_benchmarking_predictions/SA.112_pH_MLR")

SA.112_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SA.112_SOC_SVR")
SA.112_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SA.112_Clay_SVR")
SA.112_pH_SVR<- readRDS("Stored_benchmarking_predictions/SA.112_pH_SVR")


SA.112_SOC_Point_performance_RF<- cbind(point_prediction_performance(SA.112_SOC_RF$Predictions$Predicted,SA.112_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SA.112_SOC_CatBoost$Predictions$Predicted,SA.112_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SA.112_SOC_MLR$Predictions$Predicted,SA.112_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SA.112_SOC_SVR$Predictions$Predicted,SA.112_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="SOC" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))

SA.112_Clay_Point_performance_RF<- cbind(point_prediction_performance(SA.112_Clay_RF$Predictions$Predicted,SA.112_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SA.112_Clay_CatBoost$Predictions$Predicted,SA.112_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SA.112_Clay_MLR$Predictions$Predicted,SA.112_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SA.112_Clay_SVR$Predictions$Predicted,SA.112_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="Clay" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))

SA.112_pH_Point_performance_RF<- cbind(point_prediction_performance(SA.112_pH_RF$Predictions$Predicted,SA.112_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SA.112_pH_CatBoost$Predictions$Predicted,SA.112_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_pH_Point_performance_MLR<- cbind(point_prediction_performance(SA.112_pH_MLR$Predictions$Predicted,SA.112_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))
SA.112_pH_Point_performance_SVR<- cbind(point_prediction_performance(SA.112_pH_SVR$Predictions$Predicted,SA.112_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 112, "Property"="pH" ,Sensors = c("pH-ISE, NIR, Gamma, ERa"),Dataset="SA.112"))

SA.112_SOC_Point_performance_RF
SA.112_SOC_Point_performance_CatBoost
SA.112_SOC_Point_performance_MLR
SA.112_SOC_Point_performance_SVR

SA.112_Clay_Point_performance_RF
SA.112_Clay_Point_performance_CatBoost
SA.112_Clay_Point_performance_MLR
SA.112_Clay_Point_performance_SVR

SA.112_pH_Point_performance_RF
SA.112_pH_Point_performance_CatBoost
SA.112_pH_Point_performance_MLR
SA.112_pH_Point_performance_SVR

#G.104
G.104_SOC_RF<- readRDS("Stored_benchmarking_predictions/G.104_SOC_RF")
G.104_Clay_RF<- readRDS("Stored_benchmarking_predictions/G.104_Clay_RF")
G.104_pH_RF<- readRDS("Stored_benchmarking_predictions/G.104_pH_RF")

G.104_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/G.104_SOC_CatBoost")
G.104_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/G.104_Clay_CatBoost")
G.104_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/G.104_pH_CatBoost")

G.104_SOC_MLR<- readRDS("Stored_benchmarking_predictions/G.104_SOC_MLR")
G.104_Clay_MLR<- readRDS("Stored_benchmarking_predictions/G.104_Clay_MLR")
G.104_pH_MLR<- readRDS("Stored_benchmarking_predictions/G.104_pH_MLR")

G.104_SOC_SVR<- readRDS("Stored_benchmarking_predictions/G.104_SOC_SVR")
G.104_Clay_SVR<- readRDS("Stored_benchmarking_predictions/G.104_Clay_SVR")
G.104_pH_SVR<- readRDS("Stored_benchmarking_predictions/G.104_pH_SVR")


G.104_SOC_Point_performance_RF<- cbind(point_prediction_performance(G.104_SOC_RF$Predictions$Predicted,G.104_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 104, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(G.104_SOC_CatBoost$Predictions$Predicted,G.104_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 104, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_SOC_Point_performance_MLR<- cbind(point_prediction_performance(G.104_SOC_MLR$Predictions$Predicted,G.104_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 104, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_SOC_Point_performance_SVR<- cbind(point_prediction_performance(G.104_SOC_SVR$Predictions$Predicted,G.104_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 104, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))

G.104_Clay_Point_performance_RF<- cbind(point_prediction_performance(G.104_Clay_RF$Predictions$Predicted,G.104_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 104, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(G.104_Clay_CatBoost$Predictions$Predicted,G.104_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 104, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_Clay_Point_performance_MLR<- cbind(point_prediction_performance(G.104_Clay_MLR$Predictions$Predicted,G.104_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 104, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_Clay_Point_performance_SVR<- cbind(point_prediction_performance(G.104_Clay_SVR$Predictions$Predicted,G.104_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 104, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))

G.104_pH_Point_performance_RF<- cbind(point_prediction_performance(G.104_pH_RF$Predictions$Predicted,G.104_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 104, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(G.104_pH_CatBoost$Predictions$Predicted,G.104_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 104, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_pH_Point_performance_MLR<- cbind(point_prediction_performance(G.104_pH_MLR$Predictions$Predicted,G.104_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 104, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))
G.104_pH_Point_performance_SVR<- cbind(point_prediction_performance(G.104_pH_SVR$Predictions$Predicted,G.104_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 104, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="G.104"))


G.104_SOC_Point_performance_RF
G.104_SOC_Point_performance_CatBoost
G.104_SOC_Point_performance_MLR
G.104_SOC_Point_performance_SVR

G.104_Clay_Point_performance_RF
G.104_Clay_Point_performance_CatBoost
G.104_Clay_Point_performance_MLR
G.104_Clay_Point_performance_SVR

G.104_pH_Point_performance_RF
G.104_pH_Point_performance_CatBoost
G.104_pH_Point_performance_MLR
G.104_pH_Point_performance_SVR






#MGS.101
MGS.101_SOC_RF<- readRDS("Stored_benchmarking_predictions/MGS.101_SOC_RF")
MGS.101_Clay_RF<- readRDS("Stored_benchmarking_predictions/MGS.101_Clay_RF")
MGS.101_pH_RF<- readRDS("Stored_benchmarking_predictions/MGS.101_pH_RF")

MGS.101_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/MGS.101_SOC_CatBoost")
MGS.101_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/MGS.101_Clay_CatBoost")
MGS.101_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/MGS.101_pH_CatBoost")

MGS.101_SOC_MLR<- readRDS("Stored_benchmarking_predictions/MGS.101_SOC_MLR")
MGS.101_Clay_MLR<- readRDS("Stored_benchmarking_predictions/MGS.101_Clay_MLR")
MGS.101_pH_MLR<- readRDS("Stored_benchmarking_predictions/MGS.101_pH_MLR")

MGS.101_SOC_SVR<- readRDS("Stored_benchmarking_predictions/MGS.101_SOC_SVR")
MGS.101_Clay_SVR<- readRDS("Stored_benchmarking_predictions/MGS.101_Clay_SVR")
MGS.101_pH_SVR<- readRDS("Stored_benchmarking_predictions/MGS.101_pH_SVR")

MGS.101_SOC_Point_performance_RF<- cbind(point_prediction_performance(MGS.101_SOC_RF$Predictions$Predicted,MGS.101_SOC_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 101, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(MGS.101_SOC_CatBoost$Predictions$Predicted,MGS.101_SOC_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 101, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_SOC_Point_performance_MLR<- cbind(point_prediction_performance(MGS.101_SOC_MLR$Predictions$Predicted,MGS.101_SOC_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 101, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_SOC_Point_performance_SVR<- cbind(point_prediction_performance(MGS.101_SOC_SVR$Predictions$Predicted,MGS.101_SOC_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 101, "Property"="SOC" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))

MGS.101_Clay_Point_performance_RF<- cbind(point_prediction_performance(MGS.101_Clay_RF$Predictions$Predicted,MGS.101_Clay_RF$Predictions$Measured),
                                          data_frame("learning_algorithm"="RF","Number_of_samples" = 101, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(MGS.101_Clay_CatBoost$Predictions$Predicted,MGS.101_Clay_CatBoost$Predictions$Measured),
                                                data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 101, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_Clay_Point_performance_MLR<- cbind(point_prediction_performance(MGS.101_Clay_MLR$Predictions$Predicted,MGS.101_Clay_MLR$Predictions$Measured),
                                           data_frame("learning_algorithm"="MLR","Number_of_samples" = 101, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_Clay_Point_performance_SVR<- cbind(point_prediction_performance(MGS.101_Clay_SVR$Predictions$Predicted,MGS.101_Clay_SVR$Predictions$Measured),
                                           data_frame("learning_algorithm"="SVR","Number_of_samples" = 101, "Property"="Clay" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))

MGS.101_pH_Point_performance_RF<- cbind(point_prediction_performance(MGS.101_pH_RF$Predictions$Predicted,MGS.101_pH_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 101, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(MGS.101_pH_CatBoost$Predictions$Predicted,MGS.101_pH_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 101, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_pH_Point_performance_MLR<- cbind(point_prediction_performance(MGS.101_pH_MLR$Predictions$Predicted,MGS.101_pH_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 101, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))
MGS.101_pH_Point_performance_SVR<- cbind(point_prediction_performance(MGS.101_pH_SVR$Predictions$Predicted,MGS.101_pH_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 101, "Property"="pH" ,Sensors = c("RSS, DEM, VI"),Dataset="MGS.101"))

MGS.101_SOC_Point_performance_RF
MGS.101_SOC_Point_performance_CatBoost
MGS.101_SOC_Point_performance_MLR
MGS.101_SOC_Point_performance_SVR

MGS.101_Clay_Point_performance_RF
MGS.101_Clay_Point_performance_CatBoost
MGS.101_Clay_Point_performance_MLR
MGS.101_SOC_Point_performance_SVR

MGS.101_pH_Point_performance_RF
MGS.101_pH_Point_performance_CatBoost
MGS.101_pH_Point_performance_MLR
MGS.101_pH_Point_performance_SVR






#CV.98
CV.98_SOC_RF<- readRDS("Stored_benchmarking_predictions/CV.98_SOC_RF")
CV.98_Clay_RF<- readRDS("Stored_benchmarking_predictions/CV.98_Clay_RF")
CV.98_pH_RF<- readRDS("Stored_benchmarking_predictions/CV.98_pH_RF")

CV.98_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/CV.98_SOC_CatBoost")
CV.98_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/CV.98_Clay_CatBoost")
CV.98_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/CV.98_pH_CatBoost")

CV.98_SOC_MLR<- readRDS("Stored_benchmarking_predictions/CV.98_SOC_MLR")
CV.98_Clay_MLR<- readRDS("Stored_benchmarking_predictions/CV.98_Clay_MLR")
CV.98_pH_MLR<- readRDS("Stored_benchmarking_predictions/CV.98_pH_MLR")

CV.98_SOC_SVR<- readRDS("Stored_benchmarking_predictions/CV.98_SOC_SVR")
CV.98_Clay_SVR<- readRDS("Stored_benchmarking_predictions/CV.98_Clay_SVR")
CV.98_pH_SVR<- readRDS("Stored_benchmarking_predictions/CV.98_pH_SVR")

CV.98_SOC_Point_performance_RF<- cbind(point_prediction_performance(CV.98_SOC_RF$Predictions$Predicted,CV.98_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 98, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(CV.98_SOC_CatBoost$Predictions$Predicted,CV.98_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 98, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_SOC_Point_performance_MLR<- cbind(point_prediction_performance(CV.98_SOC_MLR$Predictions$Predicted,CV.98_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 98, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_SOC_Point_performance_SVR<- cbind(point_prediction_performance(CV.98_SOC_SVR$Predictions$Predicted,CV.98_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 98, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="CV.98"))

CV.98_Clay_Point_performance_RF<- cbind(point_prediction_performance(CV.98_Clay_RF$Predictions$Predicted,CV.98_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 98, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(CV.98_Clay_CatBoost$Predictions$Predicted,CV.98_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 98, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_Clay_Point_performance_MLR<- cbind(point_prediction_performance(CV.98_Clay_MLR$Predictions$Predicted,CV.98_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 98, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_Clay_Point_performance_SVR<- cbind(point_prediction_performance(CV.98_Clay_SVR$Predictions$Predicted,CV.98_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 98, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="CV.98"))

CV.98_pH_Point_performance_RF<- cbind(point_prediction_performance(CV.98_pH_RF$Predictions$Predicted,CV.98_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 98, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(CV.98_pH_CatBoost$Predictions$Predicted,CV.98_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 98, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_pH_Point_performance_MLR<- cbind(point_prediction_performance(CV.98_pH_MLR$Predictions$Predicted,CV.98_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 98, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="CV.98"))
CV.98_pH_Point_performance_SVR<- cbind(point_prediction_performance(CV.98_pH_SVR$Predictions$Predicted,CV.98_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 98, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="CV.98"))

CV.98_SOC_Point_performance_RF
CV.98_SOC_Point_performance_CatBoost
CV.98_SOC_Point_performance_MLR
CV.98_SOC_Point_performance_SVR

CV.98_Clay_Point_performance_RF
CV.98_Clay_Point_performance_CatBoost
CV.98_Clay_Point_performance_MLR
CV.98_Clay_Point_performance_SVR

CV.98_pH_Point_performance_RF
CV.98_pH_Point_performance_CatBoost
CV.98_pH_Point_performance_MLR
CV.98_pH_Point_performance_SVR



#SC.93
SC.93_SOC_RF<- readRDS("Stored_benchmarking_predictions/SC.93_SOC_RF")
SC.93_Clay_RF<- readRDS("Stored_benchmarking_predictions/SC.93_Clay_RF")
SC.93_pH_RF<- readRDS("Stored_benchmarking_predictions/SC.93_pH_RF")

SC.93_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.93_SOC_CatBoost")
SC.93_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.93_Clay_CatBoost")
SC.93_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.93_pH_CatBoost")

SC.93_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SC.93_SOC_MLR")
SC.93_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SC.93_Clay_MLR")
SC.93_pH_MLR<- readRDS("Stored_benchmarking_predictions/SC.93_pH_MLR")

SC.93_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SC.93_SOC_SVR")
SC.93_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SC.93_Clay_SVR")
SC.93_pH_SVR<- readRDS("Stored_benchmarking_predictions/SC.93_pH_SVR")

SC.93_SOC_Point_performance_RF<- cbind(point_prediction_performance(SC.93_SOC_RF$Predictions$Predicted,SC.93_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 93, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.93_SOC_CatBoost$Predictions$Predicted,SC.93_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 93, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SC.93_SOC_MLR$Predictions$Predicted,SC.93_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 93, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SC.93_SOC_SVR$Predictions$Predicted,SC.93_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 93, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SC.93"))

SC.93_Clay_Point_performance_RF<- cbind(point_prediction_performance(SC.93_Clay_RF$Predictions$Predicted,SC.93_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 93, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.93_Clay_CatBoost$Predictions$Predicted,SC.93_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 93, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SC.93_Clay_MLR$Predictions$Predicted,SC.93_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 93, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SC.93_Clay_SVR$Predictions$Predicted,SC.93_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 93, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SC.93"))

SC.93_pH_Point_performance_RF<- cbind(point_prediction_performance(SC.93_pH_RF$Predictions$Predicted,SC.93_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 93, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.93_pH_CatBoost$Predictions$Predicted,SC.93_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 93, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_pH_Point_performance_MLR<- cbind(point_prediction_performance(SC.93_pH_MLR$Predictions$Predicted,SC.93_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 93, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SC.93"))
SC.93_pH_Point_performance_SVR<- cbind(point_prediction_performance(SC.93_pH_SVR$Predictions$Predicted,SC.93_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 93, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SC.93"))

SC.93_SOC_Point_performance_RF
SC.93_SOC_Point_performance_CatBoost
SC.93_SOC_Point_performance_MLR
SC.93_SOC_Point_performance_SVR

SC.93_Clay_Point_performance_RF
SC.93_Clay_Point_performance_CatBoost
SC.93_Clay_Point_performance_MLR
SC.93_Clay_Point_performance_SVR

SC.93_pH_Point_performance_RF
SC.93_pH_Point_performance_CatBoost
SC.93_pH_Point_performance_MLR
SC.93_pH_Point_performance_SVR


#BB.72
BB.72_SOC_RF<- readRDS("Stored_benchmarking_predictions/BB.72_SOC_RF")
BB.72_Clay_RF<- readRDS("Stored_benchmarking_predictions/BB.72_Clay_RF")
BB.72_pH_RF<- readRDS("Stored_benchmarking_predictions/BB.72_pH_RF")

BB.72_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.72_SOC_CatBoost")
BB.72_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.72_Clay_CatBoost")
BB.72_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.72_pH_CatBoost")

BB.72_SOC_MLR<- readRDS("Stored_benchmarking_predictions/BB.72_SOC_MLR")
BB.72_Clay_MLR<- readRDS("Stored_benchmarking_predictions/BB.72_Clay_MLR")
BB.72_pH_MLR<- readRDS("Stored_benchmarking_predictions/BB.72_pH_MLR")

BB.72_SOC_SVR<- readRDS("Stored_benchmarking_predictions/BB.72_SOC_SVR")
BB.72_Clay_SVR<- readRDS("Stored_benchmarking_predictions/BB.72_Clay_SVR")
BB.72_pH_SVR<- readRDS("Stored_benchmarking_predictions/BB.72_pH_SVR")


BB.72_SOC_Point_performance_RF<- cbind(point_prediction_performance(BB.72_SOC_RF$Predictions$Predicted,BB.72_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 72, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.72_SOC_CatBoost$Predictions$Predicted,BB.72_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 72, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_SOC_Point_performance_MLR<- cbind(point_prediction_performance(BB.72_SOC_MLR$Predictions$Predicted,BB.72_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 72, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_SOC_Point_performance_SVR<- cbind(point_prediction_performance(BB.72_SOC_SVR$Predictions$Predicted,BB.72_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 72, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))

BB.72_Clay_Point_performance_RF<- cbind(point_prediction_performance(BB.72_Clay_RF$Predictions$Predicted,BB.72_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 72, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.72_Clay_CatBoost$Predictions$Predicted,BB.72_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 72, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_Clay_Point_performance_MLR<- cbind(point_prediction_performance(BB.72_Clay_MLR$Predictions$Predicted,BB.72_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 72, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_Clay_Point_performance_SVR<- cbind(point_prediction_performance(BB.72_Clay_SVR$Predictions$Predicted,BB.72_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 72, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))

BB.72_pH_Point_performance_RF<- cbind(point_prediction_performance(BB.72_pH_RF$Predictions$Predicted,BB.72_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 72, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.72_pH_CatBoost$Predictions$Predicted,BB.72_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 72, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_pH_Point_performance_MLR<- cbind(point_prediction_performance(BB.72_pH_MLR$Predictions$Predicted,BB.72_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 72, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))
BB.72_pH_Point_performance_SVR<- cbind(point_prediction_performance(BB.72_pH_SVR$Predictions$Predicted,BB.72_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 72, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.72"))


BB.72_SOC_Point_performance_RF
BB.72_SOC_Point_performance_CatBoost
BB.72_SOC_Point_performance_MLR
BB.72_SOC_Point_performance_SVR

BB.72_Clay_Point_performance_RF
BB.72_Clay_Point_performance_CatBoost
BB.72_Clay_Point_performance_MLR
BB.72_Clay_Point_performance_SVR

BB.72_pH_Point_performance_RF
BB.72_pH_Point_performance_CatBoost
BB.72_pH_Point_performance_MLR
BB.72_pH_Point_performance_SVR



#NRW.62
NRW.62_SOC_RF<- readRDS("Stored_benchmarking_predictions/NRW.62_SOC_RF")
NRW.62_Clay_RF<- readRDS("Stored_benchmarking_predictions/NRW.62_Clay_RF")
NRW.62_pH_RF<- readRDS("Stored_benchmarking_predictions/NRW.62_pH_RF")

NRW.62_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.62_SOC_CatBoost")
NRW.62_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.62_Clay_CatBoost")
NRW.62_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.62_pH_CatBoost")

NRW.62_SOC_MLR<- readRDS("Stored_benchmarking_predictions/NRW.62_SOC_MLR")
NRW.62_Clay_MLR<- readRDS("Stored_benchmarking_predictions/NRW.62_Clay_MLR")
NRW.62_pH_MLR<- readRDS("Stored_benchmarking_predictions/NRW.62_pH_MLR")

NRW.62_SOC_SVR<- readRDS("Stored_benchmarking_predictions/NRW.62_SOC_SVR")
NRW.62_Clay_SVR<- readRDS("Stored_benchmarking_predictions/NRW.62_Clay_SVR")
NRW.62_pH_SVR<- readRDS("Stored_benchmarking_predictions/NRW.62_pH_SVR")

NRW.62_SOC_Point_performance_RF<- cbind(point_prediction_performance(NRW.62_SOC_RF$Predictions$Predicted,NRW.62_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.62_SOC_CatBoost$Predictions$Predicted,NRW.62_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_SOC_Point_performance_MLR<- cbind(point_prediction_performance(NRW.62_SOC_MLR$Predictions$Predicted,NRW.62_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_SOC_Point_performance_SVR<- cbind(point_prediction_performance(NRW.62_SOC_SVR$Predictions$Predicted,NRW.62_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.62"))

NRW.62_Clay_Point_performance_RF<- cbind(point_prediction_performance(NRW.62_Clay_RF$Predictions$Predicted,NRW.62_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.62_Clay_CatBoost$Predictions$Predicted,NRW.62_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_Clay_Point_performance_MLR<- cbind(point_prediction_performance(NRW.62_Clay_MLR$Predictions$Predicted,NRW.62_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_Clay_Point_performance_SVR<- cbind(point_prediction_performance(NRW.62_Clay_SVR$Predictions$Predicted,NRW.62_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.62"))

NRW.62_pH_Point_performance_RF<- cbind(point_prediction_performance(NRW.62_pH_RF$Predictions$Predicted,NRW.62_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.62_pH_CatBoost$Predictions$Predicted,NRW.62_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_pH_Point_performance_MLR<- cbind(point_prediction_performance(NRW.62_pH_MLR$Predictions$Predicted,NRW.62_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.62"))
NRW.62_pH_Point_performance_SVR<- cbind(point_prediction_performance(NRW.62_pH_SVR$Predictions$Predicted,NRW.62_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.62"))

NRW.62_SOC_Point_performance_RF
NRW.62_SOC_Point_performance_CatBoost
NRW.62_SOC_Point_performance_MLR
NRW.62_SOC_Point_performance_SVR

NRW.62_Clay_Point_performance_RF
NRW.62_Clay_Point_performance_CatBoost
NRW.62_Clay_Point_performance_MLR
NRW.62_Clay_Point_performance_SVR

NRW.62_pH_Point_performance_RF
NRW.62_pH_Point_performance_CatBoost
NRW.62_pH_Point_performance_MLR
NRW.62_pH_Point_performance_SVR






#RP.62
RP.62_SOC_RF<- readRDS("Stored_benchmarking_predictions/RP.62_SOC_RF")
RP.62_Clay_RF<- readRDS("Stored_benchmarking_predictions/RP.62_Clay_RF")
RP.62_pH_RF<- readRDS("Stored_benchmarking_predictions/RP.62_pH_RF")

RP.62_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/RP.62_SOC_CatBoost")
RP.62_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/RP.62_Clay_CatBoost")
RP.62_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/RP.62_pH_CatBoost")

RP.62_SOC_MLR<- readRDS("Stored_benchmarking_predictions/RP.62_SOC_MLR")
RP.62_Clay_MLR<- readRDS("Stored_benchmarking_predictions/RP.62_Clay_MLR")
RP.62_pH_MLR<- readRDS("Stored_benchmarking_predictions/RP.62_pH_MLR")

RP.62_SOC_SVR<- readRDS("Stored_benchmarking_predictions/RP.62_SOC_SVR")
RP.62_Clay_SVR<- readRDS("Stored_benchmarking_predictions/RP.62_Clay_SVR")
RP.62_pH_SVR<- readRDS("Stored_benchmarking_predictions/RP.62_pH_SVR")

RP.62_SOC_Point_performance_RF<- cbind(point_prediction_performance(RP.62_SOC_RF$Predictions$Predicted,RP.62_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62"))
RP.62_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(RP.62_SOC_CatBoost$Predictions$Predicted,RP.62_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_SOC_Point_performance_MLR<- cbind(point_prediction_performance(RP.62_SOC_MLR$Predictions$Predicted,RP.62_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_SOC_Point_performance_SVR<- cbind(point_prediction_performance(RP.62_SOC_SVR$Predictions$Predicted,RP.62_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="SOC" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))

RP.62_Clay_Point_performance_RF<- cbind(point_prediction_performance(RP.62_Clay_RF$Predictions$Predicted,RP.62_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(RP.62_Clay_CatBoost$Predictions$Predicted,RP.62_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_Clay_Point_performance_MLR<- cbind(point_prediction_performance(RP.62_Clay_MLR$Predictions$Predicted,RP.62_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_Clay_Point_performance_SVR<- cbind(point_prediction_performance(RP.62_Clay_SVR$Predictions$Predicted,RP.62_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="Clay" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))

RP.62_pH_Point_performance_RF<- cbind(point_prediction_performance(RP.62_pH_RF$Predictions$Predicted,RP.62_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(RP.62_pH_CatBoost$Predictions$Predicted,RP.62_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_pH_Point_performance_MLR<- cbind(point_prediction_performance(RP.62_pH_MLR$Predictions$Predicted,RP.62_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))
RP.62_pH_Point_performance_SVR<- cbind(point_prediction_performance(RP.62_pH_SVR$Predictions$Predicted,RP.62_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 62, "Property"="pH" ,Sensors = c("pH-ISE, γ, ER, NIR"),Dataset="RP.62" ))

RP.62_SOC_Point_performance_RF
RP.62_SOC_Point_performance_CatBoost
RP.62_SOC_Point_performance_MLR
RP.62_SOC_Point_performance_SVR

RP.62_Clay_Point_performance_RF
RP.62_Clay_Point_performance_CatBoost
RP.62_Clay_Point_performance_MLR
RP.62_Clay_Point_performance_SVR

RP.62_pH_Point_performance_RF
RP.62_pH_Point_performance_CatBoost
RP.62_pH_Point_performance_MLR
RP.62_pH_Point_performance_SVR

#SSP.58
SSP.58_SOC_RF<- readRDS("Stored_benchmarking_predictions/SSP.58_SOC_RF")
SSP.58_Clay_RF<- readRDS("Stored_benchmarking_predictions/SSP.58_Clay_RF")
SSP.58_pH_RF<- readRDS("Stored_benchmarking_predictions/SSP.58_pH_RF")

SSP.58_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.58_SOC_CatBoost")
SSP.58_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.58_Clay_CatBoost")
SSP.58_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SSP.58_pH_CatBoost")

SSP.58_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SSP.58_SOC_MLR")
SSP.58_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SSP.58_Clay_MLR")
SSP.58_pH_MLR<- readRDS("Stored_benchmarking_predictions/SSP.58_pH_MLR")

SSP.58_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SSP.58_SOC_SVR")
SSP.58_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SSP.58_Clay_SVR")
SSP.58_pH_SVR<- readRDS("Stored_benchmarking_predictions/SSP.58_pH_SVR")


SSP.58_SOC_Point_performance_RF<- cbind(point_prediction_performance(SSP.58_SOC_RF$Predictions$Predicted,SSP.58_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 58, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.58_SOC_CatBoost$Predictions$Predicted,SSP.58_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 58, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SSP.58_SOC_MLR$Predictions$Predicted,SSP.58_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 58, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SSP.58_SOC_SVR$Predictions$Predicted,SSP.58_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 58, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))

SSP.58_Clay_Point_performance_RF<- cbind(point_prediction_performance(SSP.58_Clay_RF$Predictions$Predicted,SSP.58_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 58, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.58_Clay_CatBoost$Predictions$Predicted,SSP.58_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 58, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SSP.58_Clay_MLR$Predictions$Predicted,SSP.58_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 58, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SSP.58_Clay_SVR$Predictions$Predicted,SSP.58_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 58, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))

SSP.58_pH_Point_performance_RF<- cbind(point_prediction_performance(SSP.58_pH_RF$Predictions$Predicted,SSP.58_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 58, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SSP.58_pH_CatBoost$Predictions$Predicted,SSP.58_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 58, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_pH_Point_performance_MLR<- cbind(point_prediction_performance(SSP.58_pH_MLR$Predictions$Predicted,SSP.58_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 58, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))
SSP.58_pH_Point_performance_SVR<- cbind(point_prediction_performance(SSP.58_pH_SVR$Predictions$Predicted,SSP.58_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 58, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="SSP.58"))

SSP.58_SOC_Point_performance_RF
SSP.58_SOC_Point_performance_CatBoost
SSP.58_SOC_Point_performance_MLR
SSP.58_SOC_Point_performance_SVR

SSP.58_Clay_Point_performance_RF
SSP.58_Clay_Point_performance_CatBoost
SSP.58_Clay_Point_performance_MLR
SSP.58_Clay_Point_performance_SVR

SSP.58_pH_Point_performance_RF
SSP.58_pH_Point_performance_CatBoost
SSP.58_pH_Point_performance_MLR
SSP.58_pH_Point_performance_SVR


#NSW.52
NSW.52_SOC_RF<- readRDS("Stored_benchmarking_predictions/NSW.52_SOC_RF")
NSW.52_Clay_RF<- readRDS("Stored_benchmarking_predictions/NSW.52_Clay_RF")
NSW.52_pH_RF<- readRDS("Stored_benchmarking_predictions/NSW.52_pH_RF")

NSW.52_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/NSW.52_SOC_CatBoost")
NSW.52_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/NSW.52_Clay_CatBoost")
NSW.52_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/NSW.52_pH_CatBoost")

NSW.52_SOC_MLR<- readRDS("Stored_benchmarking_predictions/NSW.52_SOC_MLR")
NSW.52_Clay_MLR<- readRDS("Stored_benchmarking_predictions/NSW.52_Clay_MLR")
NSW.52_pH_MLR<- readRDS("Stored_benchmarking_predictions/NSW.52_pH_MLR")

NSW.52_SOC_SVR<- readRDS("Stored_benchmarking_predictions/NSW.52_SOC_SVR")
NSW.52_Clay_SVR<- readRDS("Stored_benchmarking_predictions/NSW.52_Clay_SVR")
NSW.52_pH_SVR<- readRDS("Stored_benchmarking_predictions/NSW.52_pH_SVR")

NSW.52_SOC_Point_performance_RF<- cbind(point_prediction_performance(NSW.52_SOC_RF$Predictions$Predicted,NSW.52_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 52, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(NSW.52_SOC_CatBoost$Predictions$Predicted,NSW.52_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 52, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_SOC_Point_performance_MLR<- cbind(point_prediction_performance(NSW.52_SOC_MLR$Predictions$Predicted,NSW.52_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 52, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_SOC_Point_performance_SVR<- cbind(point_prediction_performance(NSW.52_SOC_SVR$Predictions$Predicted,NSW.52_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 52, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))

NSW.52_Clay_Point_performance_RF<- cbind(point_prediction_performance(NSW.52_Clay_RF$Predictions$Predicted,NSW.52_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 52, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(NSW.52_Clay_CatBoost$Predictions$Predicted,NSW.52_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 52, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_Clay_Point_performance_MLR<- cbind(point_prediction_performance(NSW.52_Clay_MLR$Predictions$Predicted,NSW.52_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 52, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_Clay_Point_performance_SVR<- cbind(point_prediction_performance(NSW.52_Clay_SVR$Predictions$Predicted,NSW.52_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 52, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))

NSW.52_pH_Point_performance_RF<- cbind(point_prediction_performance(NSW.52_pH_RF$Predictions$Predicted,NSW.52_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 52, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(NSW.52_pH_CatBoost$Predictions$Predicted,NSW.52_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 52, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_pH_Point_performance_MLR<- cbind(point_prediction_performance(NSW.52_pH_MLR$Predictions$Predicted,NSW.52_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 52, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))
NSW.52_pH_Point_performance_SVR<- cbind(point_prediction_performance(NSW.52_pH_SVR$Predictions$Predicted,NSW.52_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 52, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="NSW.52"))

NSW.52_SOC_Point_performance_RF
NSW.52_SOC_Point_performance_CatBoost
NSW.52_SOC_Point_performance_MLR
NSW.52_SOC_Point_performance_SVR

NSW.52_Clay_Point_performance_RF
NSW.52_Clay_Point_performance_CatBoost
NSW.52_Clay_Point_performance_MLR
NSW.52_Clay_Point_performance_SVR

NSW.52_pH_Point_performance_RF
NSW.52_pH_Point_performance_CatBoost
NSW.52_pH_Point_performance_MLR
NSW.52_pH_Point_performance_SVR

#BB.51
BB.51_SOC_RF<- readRDS("Stored_benchmarking_predictions/BB.51_SOC_RF")
BB.51_Clay_RF<- readRDS("Stored_benchmarking_predictions/BB.51_Clay_RF")
BB.51_pH_RF<- readRDS("Stored_benchmarking_predictions/BB.51_pH_RF")

BB.51_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.51_SOC_CatBoost")
BB.51_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.51_Clay_CatBoost")
BB.51_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.51_pH_CatBoost")

BB.51_SOC_MLR<- readRDS("Stored_benchmarking_predictions/BB.51_SOC_MLR")
BB.51_Clay_MLR<- readRDS("Stored_benchmarking_predictions/BB.51_Clay_MLR")
BB.51_pH_MLR<- readRDS("Stored_benchmarking_predictions/BB.51_pH_MLR")

BB.51_SOC_SVR<- readRDS("Stored_benchmarking_predictions/BB.51_SOC_SVR")
BB.51_Clay_SVR<- readRDS("Stored_benchmarking_predictions/BB.51_Clay_SVR")
BB.51_pH_SVR<- readRDS("Stored_benchmarking_predictions/BB.51_pH_SVR")

BB.51_SOC_Point_performance_RF<- cbind(point_prediction_performance(BB.51_SOC_RF$Predictions$Predicted,BB.51_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.51_SOC_CatBoost$Predictions$Predicted,BB.51_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_SOC_Point_performance_MLR<- cbind(point_prediction_performance(BB.51_SOC_MLR$Predictions$Predicted,BB.51_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_SOC_Point_performance_SVR<- cbind(point_prediction_performance(BB.51_SOC_SVR$Predictions$Predicted,BB.51_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))

BB.51_Clay_Point_performance_RF<- cbind(point_prediction_performance(BB.51_Clay_RF$Predictions$Predicted,BB.51_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.51_Clay_CatBoost$Predictions$Predicted,BB.51_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_Clay_Point_performance_MLR<- cbind(point_prediction_performance(BB.51_Clay_MLR$Predictions$Predicted,BB.51_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_Clay_Point_performance_SVR<- cbind(point_prediction_performance(BB.51_Clay_SVR$Predictions$Predicted,BB.51_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))

BB.51_pH_Point_performance_RF<- cbind(point_prediction_performance(BB.51_pH_RF$Predictions$Predicted,BB.51_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.51_pH_CatBoost$Predictions$Predicted,BB.51_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_pH_Point_performance_MLR<- cbind(point_prediction_performance(BB.51_pH_MLR$Predictions$Predicted,BB.51_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))
BB.51_pH_Point_performance_SVR<- cbind(point_prediction_performance(BB.51_pH_SVR$Predictions$Predicted,BB.51_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("RSS, pH-ISE, γ, ERa, DEM"),Dataset="BB.51"))


BB.51_SOC_Point_performance_RF
BB.51_SOC_Point_performance_CatBoost
BB.51_SOC_Point_performance_MLR
BB.51_SOC_Point_performance_SVR

BB.51_Clay_Point_performance_RF
BB.51_Clay_Point_performance_CatBoost
BB.51_Clay_Point_performance_MLR
BB.51_Clay_Point_performance_SVR

BB.51_pH_Point_performance_RF
BB.51_pH_Point_performance_CatBoost
BB.51_pH_Point_performance_MLR
BB.51_pH_Point_performance_SVR

#W.50
W.50_SOC_RF<- readRDS("Stored_benchmarking_predictions/W.50_SOC_RF")
W.50_Clay_RF<- readRDS("Stored_benchmarking_predictions/W.50_Clay_RF")
W.50_pH_RF<- readRDS("Stored_benchmarking_predictions/W.50_pH_RF")

W.50_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/W.50_SOC_CatBoost")
W.50_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/W.50_Clay_CatBoost")
W.50_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/W.50_pH_CatBoost")

W.50_SOC_MLR<- readRDS("Stored_benchmarking_predictions/W.50_SOC_MLR")
W.50_Clay_MLR<- readRDS("Stored_benchmarking_predictions/W.50_Clay_MLR")
W.50_pH_MLR<- readRDS("Stored_benchmarking_predictions/W.50_pH_MLR")

W.50_SOC_SVR<- readRDS("Stored_benchmarking_predictions/W.50_SOC_SVR")
W.50_Clay_SVR<- readRDS("Stored_benchmarking_predictions/W.50_Clay_SVR")
W.50_pH_SVR<- readRDS("Stored_benchmarking_predictions/W.50_pH_SVR")

W.50_SOC_Point_performance_RF<- cbind(point_prediction_performance(W.50_SOC_RF$Predictions$Predicted,W.50_SOC_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(W.50_SOC_CatBoost$Predictions$Predicted,W.50_SOC_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_SOC_Point_performance_MLR<- cbind(point_prediction_performance(W.50_SOC_MLR$Predictions$Predicted,W.50_SOC_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_SOC_Point_performance_SVR<- cbind(point_prediction_performance(W.50_SOC_SVR$Predictions$Predicted,W.50_SOC_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))

W.50_Clay_Point_performance_RF<- cbind(point_prediction_performance(W.50_Clay_RF$Predictions$Predicted,W.50_Clay_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(W.50_Clay_CatBoost$Predictions$Predicted,W.50_Clay_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_Clay_Point_performance_MLR<- cbind(point_prediction_performance(W.50_Clay_MLR$Predictions$Predicted,W.50_Clay_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_Clay_Point_performance_SVR<- cbind(point_prediction_performance(W.50_Clay_SVR$Predictions$Predicted,W.50_Clay_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))

W.50_pH_Point_performance_RF<- cbind(point_prediction_performance(W.50_pH_RF$Predictions$Predicted,W.50_pH_RF$Predictions$Measured),
                                     data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(W.50_pH_CatBoost$Predictions$Predicted,W.50_pH_CatBoost$Predictions$Measured),
                                           data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_pH_Point_performance_MLR<- cbind(point_prediction_performance(W.50_pH_MLR$Predictions$Predicted,W.50_pH_MLR$Predictions$Measured),
                                      data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))
W.50_pH_Point_performance_SVR<- cbind(point_prediction_performance(W.50_pH_SVR$Predictions$Predicted,W.50_pH_SVR$Predictions$Measured),
                                      data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("XRF, ERa, DEM"),Dataset="W.50"))

W.50_SOC_Point_performance_RF
W.50_SOC_Point_performance_CatBoost
W.50_SOC_Point_performance_MLR
W.50_SOC_Point_performance_SVR

W.50_Clay_Point_performance_RF
W.50_Clay_Point_performance_CatBoost
W.50_Clay_Point_performance_MLR
W.50_Clay_Point_performance_SVR

W.50_pH_Point_performance_RF
W.50_pH_Point_performance_CatBoost
W.50_pH_Point_performance_MLR
W.50_pH_Point_performance_SVR

#SC.50
SC.50_SOC_RF<- readRDS("Stored_benchmarking_predictions/SC.50_SOC_RF")
SC.50_Clay_RF<- readRDS("Stored_benchmarking_predictions/SC.50_Clay_RF")
SC.50_pH_RF<- readRDS("Stored_benchmarking_predictions/SC.50_pH_RF")

SC.50_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.50_SOC_CatBoost")
SC.50_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.50_Clay_CatBoost")
SC.50_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SC.50_pH_CatBoost")

SC.50_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SC.50_SOC_MLR")
SC.50_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SC.50_Clay_MLR")
SC.50_pH_MLR<- readRDS("Stored_benchmarking_predictions/SC.50_pH_MLR")

SC.50_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SC.50_SOC_SVR")
SC.50_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SC.50_Clay_SVR")
SC.50_pH_SVR<- readRDS("Stored_benchmarking_predictions/SC.50_pH_SVR")


SC.50_SOC_Point_performance_RF<- cbind(point_prediction_performance(SC.50_SOC_RF$Predictions$Predicted,SC.50_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.50_SOC_CatBoost$Predictions$Predicted,SC.50_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SC.50_SOC_MLR$Predictions$Predicted,SC.50_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SC.50_SOC_SVR$Predictions$Predicted,SC.50_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))

SC.50_Clay_Point_performance_RF<- cbind(point_prediction_performance(SC.50_Clay_RF$Predictions$Predicted,SC.50_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.50_Clay_CatBoost$Predictions$Predicted,SC.50_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SC.50_Clay_MLR$Predictions$Predicted,SC.50_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SC.50_Clay_SVR$Predictions$Predicted,SC.50_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))

SC.50_pH_Point_performance_RF<- cbind(point_prediction_performance(SC.50_pH_RF$Predictions$Predicted,SC.50_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SC.50_pH_CatBoost$Predictions$Predicted,SC.50_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_pH_Point_performance_MLR<- cbind(point_prediction_performance(SC.50_pH_MLR$Predictions$Predicted,SC.50_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))
SC.50_pH_Point_performance_SVR<- cbind(point_prediction_performance(SC.50_pH_SVR$Predictions$Predicted,SC.50_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 50, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SC.50"))

SC.50_SOC_Point_performance_RF
SC.50_SOC_Point_performance_CatBoost
SC.50_SOC_Point_performance_MLR
SC.50_SOC_Point_performance_SVR

SC.50_Clay_Point_performance_RF
SC.50_Clay_Point_performance_CatBoost
SC.50_Clay_Point_performance_MLR
SC.50_Clay_Point_performance_SVR

SC.50_pH_Point_performance_RF
SC.50_pH_Point_performance_CatBoost
SC.50_pH_Point_performance_MLR
SC.50_pH_Point_performance_SVR


#PC.45
PC.45_SOC_RF<- readRDS("Stored_benchmarking_predictions/PC.45_SOC_RF")
PC.45_Clay_RF<- readRDS("Stored_benchmarking_predictions/PC.45_Clay_RF")
PC.45_pH_RF<- readRDS("Stored_benchmarking_predictions/PC.45_pH_RF")

PC.45_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/PC.45_SOC_CatBoost")
PC.45_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/PC.45_Clay_CatBoost")
PC.45_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/PC.45_pH_CatBoost")

PC.45_SOC_MLR<- readRDS("Stored_benchmarking_predictions/PC.45_SOC_MLR")
PC.45_Clay_MLR<- readRDS("Stored_benchmarking_predictions/PC.45_Clay_MLR")
PC.45_pH_MLR<- readRDS("Stored_benchmarking_predictions/PC.45_pH_MLR")

PC.45_SOC_SVR<- readRDS("Stored_benchmarking_predictions/PC.45_SOC_SVR")
PC.45_Clay_SVR<- readRDS("Stored_benchmarking_predictions/PC.45_Clay_SVR")
PC.45_pH_SVR<- readRDS("Stored_benchmarking_predictions/PC.45_pH_SVR")

PC.45_SOC_Point_performance_RF<- cbind(point_prediction_performance(PC.45_SOC_RF$Predictions$Predicted,PC.45_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 45, "Property"="SOC" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(PC.45_SOC_CatBoost$Predictions$Predicted,PC.45_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 45, "Property"="SOC" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_SOC_Point_performance_MLR<- cbind(point_prediction_performance(PC.45_SOC_MLR$Predictions$Predicted,PC.45_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 45, "Property"="SOC" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_SOC_Point_performance_SVR<- cbind(point_prediction_performance(PC.45_SOC_SVR$Predictions$Predicted,PC.45_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 45, "Property"="SOC" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))

PC.45_Clay_Point_performance_RF<- cbind(point_prediction_performance(PC.45_Clay_RF$Predictions$Predicted,PC.45_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 45, "Property"="Clay" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(PC.45_Clay_CatBoost$Predictions$Predicted,PC.45_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 45, "Property"="Clay" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_Clay_Point_performance_MLR<- cbind(point_prediction_performance(PC.45_Clay_MLR$Predictions$Predicted,PC.45_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 45, "Property"="Clay" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_Clay_Point_performance_SVR<- cbind(point_prediction_performance(PC.45_Clay_SVR$Predictions$Predicted,PC.45_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 45, "Property"="Clay" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))

PC.45_pH_Point_performance_RF<- cbind(point_prediction_performance(PC.45_pH_RF$Predictions$Predicted,PC.45_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 45, "Property"="pH" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(PC.45_pH_CatBoost$Predictions$Predicted,PC.45_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 45, "Property"="pH" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_pH_Point_performance_MLR<- cbind(point_prediction_performance(PC.45_pH_MLR$Predictions$Predicted,PC.45_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 45, "Property"="pH" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))
PC.45_pH_Point_performance_SVR<- cbind(point_prediction_performance(PC.45_pH_SVR$Predictions$Predicted,PC.45_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 45, "Property"="pH" ,Sensors = c("ERa, CSMoisture"),Dataset="PC.45"))

PC.45_SOC_Point_performance_RF
PC.45_SOC_Point_performance_CatBoost
PC.45_SOC_Point_performance_MLR
PC.45_SOC_Point_performance_SVR

PC.45_Clay_Point_performance_RF
PC.45_Clay_Point_performance_CatBoost
PC.45_Clay_Point_performance_MLR
PC.45_Clay_Point_performance_SVR

PC.45_pH_Point_performance_RF
PC.45_pH_Point_performance_CatBoost
PC.45_pH_Point_performance_MLR
PC.45_pH_Point_performance_SVR


#MG.44
MG.44_SOC_RF<- readRDS("Stored_benchmarking_predictions/MG.44_SOC_RF")
MG.44_Clay_RF<- readRDS("Stored_benchmarking_predictions/MG.44_Clay_RF")
MG.44_pH_RF<- readRDS("Stored_benchmarking_predictions/MG.44_pH_RF")

MG.44_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.44_SOC_CatBoost")
MG.44_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.44_Clay_CatBoost")
MG.44_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/MG.44_pH_CatBoost")

MG.44_SOC_MLR<- readRDS("Stored_benchmarking_predictions/MG.44_SOC_MLR")
MG.44_Clay_MLR<- readRDS("Stored_benchmarking_predictions/MG.44_Clay_MLR")
MG.44_pH_MLR<- readRDS("Stored_benchmarking_predictions/MG.44_pH_MLR")

MG.44_SOC_SVR<- readRDS("Stored_benchmarking_predictions/MG.44_SOC_SVR")
MG.44_Clay_SVR<- readRDS("Stored_benchmarking_predictions/MG.44_Clay_SVR")
MG.44_pH_SVR<- readRDS("Stored_benchmarking_predictions/MG.44_pH_SVR")

MG.44_SOC_Point_performance_RF<- cbind(point_prediction_performance(MG.44_SOC_RF$Predictions$Predicted,MG.44_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 44, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.44_SOC_CatBoost$Predictions$Predicted,MG.44_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 44, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_SOC_Point_performance_MLR<- cbind(point_prediction_performance(MG.44_SOC_MLR$Predictions$Predicted,MG.44_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 44, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_SOC_Point_performance_SVR<- cbind(point_prediction_performance(MG.44_SOC_SVR$Predictions$Predicted,MG.44_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 44, "Property"="SOC" ,Sensors = c("vis-NIR"),Dataset="MG.44"))

MG.44_Clay_Point_performance_RF<- cbind(point_prediction_performance(MG.44_Clay_RF$Predictions$Predicted,MG.44_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 44, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.44_Clay_CatBoost$Predictions$Predicted,MG.44_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 44, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_Clay_Point_performance_MLR<- cbind(point_prediction_performance(MG.44_Clay_MLR$Predictions$Predicted,MG.44_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 44, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_Clay_Point_performance_SVR<- cbind(point_prediction_performance(MG.44_Clay_SVR$Predictions$Predicted,MG.44_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 44, "Property"="Clay" ,Sensors = c("vis-NIR"),Dataset="MG.44"))

MG.44_pH_Point_performance_RF<- cbind(point_prediction_performance(MG.44_pH_RF$Predictions$Predicted,MG.44_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 44, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(MG.44_pH_CatBoost$Predictions$Predicted,MG.44_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 44, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_pH_Point_performance_MLR<- cbind(point_prediction_performance(MG.44_pH_MLR$Predictions$Predicted,MG.44_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 44, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="MG.44"))
MG.44_pH_Point_performance_SVR<- cbind(point_prediction_performance(MG.44_pH_SVR$Predictions$Predicted,MG.44_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 44, "Property"="pH" ,Sensors = c("vis-NIR"),Dataset="MG.44"))

MG.44_SOC_Point_performance_RF
MG.44_SOC_Point_performance_CatBoost
MG.44_SOC_Point_performance_MLR
MG.44_SOC_Point_performance_SVR

MG.44_Clay_Point_performance_RF
MG.44_Clay_Point_performance_CatBoost
MG.44_Clay_Point_performance_MLR
MG.44_Clay_Point_performance_SVR

MG.44_pH_Point_performance_RF
MG.44_pH_Point_performance_CatBoost
MG.44_pH_Point_performance_MLR
MG.44_pH_Point_performance_SVR













#NRW.42
NRW.42_SOC_RF<- readRDS("Stored_benchmarking_predictions/NRW.42_SOC_RF")
NRW.42_Clay_RF<- readRDS("Stored_benchmarking_predictions/NRW.42_Clay_RF")
NRW.42_pH_RF<- readRDS("Stored_benchmarking_predictions/NRW.42_pH_RF")

NRW.42_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.42_SOC_CatBoost")
NRW.42_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.42_Clay_CatBoost")
NRW.42_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/NRW.42_pH_CatBoost")

NRW.42_SOC_MLR<- readRDS("Stored_benchmarking_predictions/NRW.42_SOC_MLR")
NRW.42_Clay_MLR<- readRDS("Stored_benchmarking_predictions/NRW.42_Clay_MLR")
NRW.42_pH_MLR<- readRDS("Stored_benchmarking_predictions/NRW.42_pH_MLR")

NRW.42_SOC_SVR<- readRDS("Stored_benchmarking_predictions/NRW.42_SOC_SVR")
NRW.42_Clay_SVR<- readRDS("Stored_benchmarking_predictions/NRW.42_Clay_SVR")
NRW.42_pH_SVR<- readRDS("Stored_benchmarking_predictions/NRW.42_pH_SVR")

NRW.42_SOC_Point_performance_RF<- cbind(point_prediction_performance(NRW.42_SOC_RF$Predictions$Predicted,NRW.42_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 42, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.42_SOC_CatBoost$Predictions$Predicted,NRW.42_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 42, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_SOC_Point_performance_MLR<- cbind(point_prediction_performance(NRW.42_SOC_MLR$Predictions$Predicted,NRW.42_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 42, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_SOC_Point_performance_SVR<- cbind(point_prediction_performance(NRW.42_SOC_SVR$Predictions$Predicted,NRW.42_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 42, "Property"="SOC" ,Sensors = c("MIR"),Dataset="NRW.42"))

NRW.42_Clay_Point_performance_RF<- cbind(point_prediction_performance(NRW.42_Clay_RF$Predictions$Predicted,NRW.42_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 42, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.42_Clay_CatBoost$Predictions$Predicted,NRW.42_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 42, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_Clay_Point_performance_MLR<- cbind(point_prediction_performance(NRW.42_Clay_MLR$Predictions$Predicted,NRW.42_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 42, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_Clay_Point_performance_SVR<- cbind(point_prediction_performance(NRW.42_Clay_SVR$Predictions$Predicted,NRW.42_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 42, "Property"="Clay" ,Sensors = c("MIR"),Dataset="NRW.42"))

NRW.42_pH_Point_performance_RF<- cbind(point_prediction_performance(NRW.42_pH_RF$Predictions$Predicted,NRW.42_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 42, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(NRW.42_pH_CatBoost$Predictions$Predicted,NRW.42_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 42, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_pH_Point_performance_MLR<- cbind(point_prediction_performance(NRW.42_pH_MLR$Predictions$Predicted,NRW.42_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 42, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.42"))
NRW.42_pH_Point_performance_SVR<- cbind(point_prediction_performance(NRW.42_pH_SVR$Predictions$Predicted,NRW.42_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 42, "Property"="pH" ,Sensors = c("MIR"),Dataset="NRW.42"))

NRW.42_SOC_Point_performance_RF
NRW.42_SOC_Point_performance_CatBoost
NRW.42_SOC_Point_performance_MLR
NRW.42_SOC_Point_performance_SVR

NRW.42_Clay_Point_performance_RF
NRW.42_Clay_Point_performance_CatBoost
NRW.42_Clay_Point_performance_MLR
NRW.42_Clay_Point_performance_SVR

NRW.42_pH_Point_performance_RF
NRW.42_pH_Point_performance_CatBoost
NRW.42_pH_Point_performance_MLR
NRW.42_pH_Point_performance_SVR




# SM.40
SM.40_SOC_RF<- readRDS("Stored_benchmarking_predictions/SM.40_SOC_RF")
SM.40_Clay_RF<- readRDS("Stored_benchmarking_predictions/SM.40_Clay_RF")
SM.40_pH_RF<- readRDS("Stored_benchmarking_predictions/SM.40_pH_RF")

SM.40_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/SM.40_SOC_CatBoost")
SM.40_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/SM.40_Clay_CatBoost")
SM.40_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/SM.40_pH_CatBoost")

SM.40_SOC_MLR<- readRDS("Stored_benchmarking_predictions/SM.40_SOC_MLR")
SM.40_Clay_MLR<- readRDS("Stored_benchmarking_predictions/SM.40_Clay_MLR")
SM.40_pH_MLR<- readRDS("Stored_benchmarking_predictions/SM.40_pH_MLR")

SM.40_SOC_SVR<- readRDS("Stored_benchmarking_predictions/SM.40_SOC_SVR")
SM.40_Clay_SVR<- readRDS("Stored_benchmarking_predictions/SM.40_Clay_SVR")
SM.40_pH_SVR<- readRDS("Stored_benchmarking_predictions/SM.40_pH_SVR")

SM.40_SOC_Point_performance_RF<- cbind(point_prediction_performance(SM.40_SOC_RF$Predictions$Predicted,SM.40_SOC_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 40, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(SM.40_SOC_CatBoost$Predictions$Predicted,SM.40_SOC_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 40, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_SOC_Point_performance_MLR<- cbind(point_prediction_performance(SM.40_SOC_MLR$Predictions$Predicted,SM.40_SOC_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 40, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_SOC_Point_performance_SVR<- cbind(point_prediction_performance(SM.40_SOC_SVR$Predictions$Predicted,SM.40_SOC_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 40, "Property"="SOC" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))

SM.40_Clay_Point_performance_RF<- cbind(point_prediction_performance(SM.40_Clay_RF$Predictions$Predicted,SM.40_Clay_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 40, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(SM.40_Clay_CatBoost$Predictions$Predicted,SM.40_Clay_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 40, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_Clay_Point_performance_MLR<- cbind(point_prediction_performance(SM.40_Clay_MLR$Predictions$Predicted,SM.40_Clay_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 40, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_Clay_Point_performance_SVR<- cbind(point_prediction_performance(SM.40_Clay_SVR$Predictions$Predicted,SM.40_Clay_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 40, "Property"="Clay" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))

SM.40_pH_Point_performance_RF<- cbind(point_prediction_performance(SM.40_pH_RF$Predictions$Predicted,SM.40_pH_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 40, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(SM.40_pH_CatBoost$Predictions$Predicted,SM.40_pH_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 40, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_pH_Point_performance_MLR<- cbind(point_prediction_performance(SM.40_pH_MLR$Predictions$Predicted,SM.40_pH_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 40, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))
SM.40_pH_Point_performance_SVR<- cbind(point_prediction_performance(SM.40_pH_SVR$Predictions$Predicted,SM.40_pH_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 40, "Property"="pH" ,Sensors = c("ERa, DEM"),Dataset="SM.40"))

SM.40_SOC_Point_performance_RF
SM.40_SOC_Point_performance_CatBoost
SM.40_SOC_Point_performance_MLR
SM.40_SOC_Point_performance_SVR

SM.40_Clay_Point_performance_RF
SM.40_Clay_Point_performance_CatBoost
SM.40_Clay_Point_performance_MLR
SM.40_Clay_Point_performance_SVR

SM.40_pH_Point_performance_RF
SM.40_pH_Point_performance_CatBoost
SM.40_pH_Point_performance_MLR
SM.40_pH_Point_performance_SVR



#MWP.36
MWP.36_SOC_RF<- readRDS("Stored_benchmarking_predictions/MWP.36_SOC_RF")
MWP.36_Clay_RF<- readRDS("Stored_benchmarking_predictions/MWP.36_Clay_RF")
MWP.36_pH_RF<- readRDS("Stored_benchmarking_predictions/MWP.36_pH_RF")

MWP.36_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/MWP.36_SOC_CatBoost")
MWP.36_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/MWP.36_Clay_CatBoost")
MWP.36_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/MWP.36_pH_CatBoost")

MWP.36_SOC_MLR<- readRDS("Stored_benchmarking_predictions/MWP.36_SOC_MLR")
MWP.36_Clay_MLR<- readRDS("Stored_benchmarking_predictions/MWP.36_Clay_MLR")
MWP.36_pH_MLR<- readRDS("Stored_benchmarking_predictions/MWP.36_pH_MLR")

MWP.36_SOC_SVR<- readRDS("Stored_benchmarking_predictions/MWP.36_SOC_SVR")
MWP.36_Clay_SVR<- readRDS("Stored_benchmarking_predictions/MWP.36_Clay_SVR")
MWP.36_pH_SVR<- readRDS("Stored_benchmarking_predictions/MWP.36_pH_SVR")

MWP.36_SOC_Point_performance_RF<- cbind(point_prediction_performance(MWP.36_SOC_RF$Predictions$Predicted,MWP.36_SOC_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 36, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(MWP.36_SOC_CatBoost$Predictions$Predicted,MWP.36_SOC_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 36, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_SOC_Point_performance_MLR<- cbind(point_prediction_performance(MWP.36_SOC_MLR$Predictions$Predicted,MWP.36_SOC_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 36, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_SOC_Point_performance_SVR<- cbind(point_prediction_performance(MWP.36_SOC_SVR$Predictions$Predicted,MWP.36_SOC_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 36, "Property"="SOC" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))

MWP.36_Clay_Point_performance_RF<- cbind(point_prediction_performance(MWP.36_Clay_RF$Predictions$Predicted,MWP.36_Clay_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 36, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(MWP.36_Clay_CatBoost$Predictions$Predicted,MWP.36_Clay_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 36, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_Clay_Point_performance_MLR<- cbind(point_prediction_performance(MWP.36_Clay_MLR$Predictions$Predicted,MWP.36_Clay_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 36, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_Clay_Point_performance_SVR<- cbind(point_prediction_performance(MWP.36_Clay_SVR$Predictions$Predicted,MWP.36_Clay_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 36, "Property"="Clay" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))

MWP.36_pH_Point_performance_RF<- cbind(point_prediction_performance(MWP.36_pH_RF$Predictions$Predicted,MWP.36_pH_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 36, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(MWP.36_pH_CatBoost$Predictions$Predicted,MWP.36_pH_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 36, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_pH_Point_performance_MLR<- cbind(point_prediction_performance(MWP.36_pH_MLR$Predictions$Predicted,MWP.36_pH_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 36, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))
MWP.36_pH_Point_performance_SVR<- cbind(point_prediction_performance(MWP.36_pH_SVR$Predictions$Predicted,MWP.36_pH_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 36, "Property"="pH" ,Sensors = c("RSS, DEM"),Dataset="MWP.36"))

MWP.36_SOC_Point_performance_RF
MWP.36_SOC_Point_performance_CatBoost
MWP.36_SOC_Point_performance_MLR
MWP.36_SOC_Point_performance_SVR

MWP.36_Clay_Point_performance_RF
MWP.36_Clay_Point_performance_CatBoost
MWP.36_Clay_Point_performance_MLR
MWP.36_Clay_Point_performance_SVR

MWP.36_pH_Point_performance_RF
MWP.36_pH_Point_performance_CatBoost
MWP.36_pH_Point_performance_MLR
MWP.36_pH_Point_performance_SVR


#O.32
O.32_SOC_RF<- readRDS("Stored_benchmarking_predictions/O.32_SOC_RF")
O.32_Clay_RF<- readRDS("Stored_benchmarking_predictions/O.32_Clay_RF")
O.32_pH_RF<- readRDS("Stored_benchmarking_predictions/O.32_pH_RF")

O.32_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/O.32_SOC_CatBoost")
O.32_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/O.32_Clay_CatBoost")
O.32_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/O.32_pH_CatBoost")

O.32_SOC_MLR<- readRDS("Stored_benchmarking_predictions/O.32_SOC_MLR")
O.32_Clay_MLR<- readRDS("Stored_benchmarking_predictions/O.32_Clay_MLR")
O.32_pH_MLR<- readRDS("Stored_benchmarking_predictions/O.32_pH_MLR")

O.32_SOC_SVR<- readRDS("Stored_benchmarking_predictions/O.32_SOC_SVR")
O.32_Clay_SVR<- readRDS("Stored_benchmarking_predictions/O.32_Clay_SVR")
O.32_pH_SVR<- readRDS("Stored_benchmarking_predictions/O.32_pH_SVR")

O.32_SOC_Point_performance_RF<- cbind(point_prediction_performance(O.32_SOC_RF$Predictions$Predicted,O.32_SOC_RF$Predictions$Measured),
                                      data_frame("learning_algorithm"="RF","Number_of_samples" = 32, "Property"="SOC" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(O.32_SOC_CatBoost$Predictions$Predicted,O.32_SOC_CatBoost$Predictions$Measured),
                                            data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 32, "Property"="SOC" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_SOC_Point_performance_MLR<- cbind(point_prediction_performance(O.32_SOC_MLR$Predictions$Predicted,O.32_SOC_MLR$Predictions$Measured),
                                       data_frame("learning_algorithm"="MLR","Number_of_samples" = 32, "Property"="SOC" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_SOC_Point_performance_SVR<- cbind(point_prediction_performance(O.32_SOC_SVR$Predictions$Predicted,O.32_SOC_SVR$Predictions$Measured),
                                       data_frame("learning_algorithm"="SVR","Number_of_samples" = 32, "Property"="SOC" ,Sensors = c("MIR"),Dataset="O.32"))

O.32_Clay_Point_performance_RF<- cbind(point_prediction_performance(O.32_Clay_RF$Predictions$Predicted,O.32_Clay_RF$Predictions$Measured),
                                       data_frame("learning_algorithm"="RF","Number_of_samples" = 32, "Property"="Clay" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(O.32_Clay_CatBoost$Predictions$Predicted,O.32_Clay_CatBoost$Predictions$Measured),
                                             data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 32, "Property"="Clay" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_Clay_Point_performance_MLR<- cbind(point_prediction_performance(O.32_Clay_MLR$Predictions$Predicted,O.32_Clay_MLR$Predictions$Measured),
                                        data_frame("learning_algorithm"="MLR","Number_of_samples" = 32, "Property"="Clay" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_Clay_Point_performance_SVR<- cbind(point_prediction_performance(O.32_Clay_SVR$Predictions$Predicted,O.32_Clay_SVR$Predictions$Measured),
                                        data_frame("learning_algorithm"="SVR","Number_of_samples" = 32, "Property"="Clay" ,Sensors = c("MIR"),Dataset="O.32"))

O.32_pH_Point_performance_RF<- cbind(point_prediction_performance(O.32_pH_RF$Predictions$Predicted,O.32_pH_RF$Predictions$Measured),
                                     data_frame("learning_algorithm"="RF","Number_of_samples" = 32, "Property"="pH" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(O.32_pH_CatBoost$Predictions$Predicted,O.32_pH_CatBoost$Predictions$Measured),
                                           data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 32, "Property"="pH" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_pH_Point_performance_MLR<- cbind(point_prediction_performance(O.32_pH_MLR$Predictions$Predicted,O.32_pH_MLR$Predictions$Measured),
                                      data_frame("learning_algorithm"="MLR","Number_of_samples" = 32, "Property"="pH" ,Sensors = c("MIR"),Dataset="O.32"))
O.32_pH_Point_performance_SVR<- cbind(point_prediction_performance(O.32_pH_SVR$Predictions$Predicted,O.32_pH_SVR$Predictions$Measured),
                                      data_frame("learning_algorithm"="SVR","Number_of_samples" = 32, "Property"="pH" ,Sensors = c("MIR"),Dataset="O.32"))

O.32_SOC_Point_performance_RF
O.32_SOC_Point_performance_CatBoost
O.32_SOC_Point_performance_MLR
O.32_SOC_Point_performance_SVR

O.32_Clay_Point_performance_RF
O.32_Clay_Point_performance_CatBoost
O.32_Clay_Point_performance_MLR
O.32_Clay_Point_performance_SVR

O.32_pH_Point_performance_RF
O.32_pH_Point_performance_CatBoost
O.32_pH_Point_performance_MLR
O.32_pH_Point_performance_SVR









#BB.30_1
BB.30_1_SOC_RF<- readRDS("Stored_benchmarking_predictions/BB.30_1_SOC_RF")
BB.30_1_Clay_RF<- readRDS("Stored_benchmarking_predictions/BB.30_1_Clay_RF")
BB.30_1_pH_RF<- readRDS("Stored_benchmarking_predictions/BB.30_1_pH_RF")

BB.30_1_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_1_SOC_CatBoost")
BB.30_1_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_1_Clay_CatBoost")
BB.30_1_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_1_pH_CatBoost")

BB.30_1_SOC_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_1_SOC_MLR")
BB.30_1_Clay_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_1_Clay_MLR")
BB.30_1_pH_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_1_pH_MLR")

BB.30_1_SOC_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_1_SOC_SVR")
BB.30_1_Clay_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_1_Clay_SVR")
BB.30_1_pH_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_1_pH_SVR")

BB.30_1_SOC_Point_performance_RF<- cbind(point_prediction_performance(BB.30_1_SOC_RF$Predictions$Predicted,BB.30_1_SOC_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_1_SOC_CatBoost$Predictions$Predicted,BB.30_1_SOC_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_SOC_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_1_SOC_MLR$Predictions$Predicted,BB.30_1_SOC_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_SOC_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_1_SOC_SVR$Predictions$Predicted,BB.30_1_SOC_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="SOC" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))

BB.30_1_Clay_Point_performance_RF<- cbind(point_prediction_performance(BB.30_1_Clay_RF$Predictions$Predicted,BB.30_1_Clay_RF$Predictions$Measured),
                                          data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_1_Clay_CatBoost$Predictions$Predicted,BB.30_1_Clay_CatBoost$Predictions$Measured),
                                                data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_Clay_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_1_Clay_MLR$Predictions$Predicted,BB.30_1_Clay_MLR$Predictions$Measured),
                                           data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_Clay_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_1_Clay_SVR$Predictions$Predicted,BB.30_1_Clay_SVR$Predictions$Measured),
                                           data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="Clay" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))

BB.30_1_pH_Point_performance_RF<- cbind(point_prediction_performance(BB.30_1_pH_RF$Predictions$Predicted,BB.30_1_pH_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_1_pH_CatBoost$Predictions$Predicted,BB.30_1_pH_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_pH_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_1_pH_MLR$Predictions$Predicted,BB.30_1_pH_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))
BB.30_1_pH_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_1_pH_SVR$Predictions$Predicted,BB.30_1_pH_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 250, "Property"="pH" ,Sensors = c("DEM, ERa, pH-ISE, VI"),Dataset="BB.30_1"))

BB.30_1_SOC_Point_performance_RF
BB.30_1_SOC_Point_performance_CatBoost
BB.30_1_SOC_Point_performance_MLR
BB.30_1_Clay_Point_performance_SVR

BB.30_1_Clay_Point_performance_RF
BB.30_1_Clay_Point_performance_CatBoost
BB.30_1_Clay_Point_performance_MLR
BB.30_1_Clay_Point_performance_SVR

BB.30_1_pH_Point_performance_RF
BB.30_1_pH_Point_performance_CatBoost
BB.30_1_pH_Point_performance_MLR
BB.30_1_pH_Point_performance_SVR












#BB.30_2
BB.30_2_SOC_RF<- readRDS("Stored_benchmarking_predictions/BB.30_2_SOC_RF")
BB.30_2_Clay_RF<- readRDS("Stored_benchmarking_predictions/BB.30_2_Clay_RF")
BB.30_2_pH_RF<- readRDS("Stored_benchmarking_predictions/BB.30_2_pH_RF")

BB.30_2_SOC_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_2_SOC_CatBoost")
BB.30_2_Clay_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_2_Clay_CatBoost")
BB.30_2_pH_CatBoost<- readRDS("Stored_benchmarking_predictions/BB.30_2_pH_CatBoost")

BB.30_2_SOC_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_2_SOC_MLR")
BB.30_2_Clay_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_2_Clay_MLR")
BB.30_2_pH_MLR<- readRDS("Stored_benchmarking_predictions/BB.30_2_pH_MLR")

BB.30_2_SOC_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_2_SOC_SVR")
BB.30_2_Clay_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_2_Clay_SVR")
BB.30_2_pH_SVR<- readRDS("Stored_benchmarking_predictions/BB.30_2_pH_SVR")

BB.30_2_SOC_Point_performance_RF<- cbind(point_prediction_performance(BB.30_2_SOC_RF$Predictions$Predicted,BB.30_2_SOC_RF$Predictions$Measured),
                                         data_frame("learning_algorithm"="RF","Number_of_samples" = 30, "Property"="SOC" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_SOC_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_2_SOC_CatBoost$Predictions$Predicted,BB.30_2_SOC_CatBoost$Predictions$Measured),
                                               data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 30, "Property"="SOC" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_SOC_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_2_SOC_MLR$Predictions$Predicted,BB.30_2_SOC_MLR$Predictions$Measured),
                                          data_frame("learning_algorithm"="MLR","Number_of_samples" = 30, "Property"="SOC" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_SOC_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_2_SOC_SVR$Predictions$Predicted,BB.30_2_SOC_SVR$Predictions$Measured),
                                          data_frame("learning_algorithm"="SVR","Number_of_samples" = 30, "Property"="SOC" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))

BB.30_2_Clay_Point_performance_RF<- cbind(point_prediction_performance(BB.30_2_Clay_RF$Predictions$Predicted,BB.30_2_Clay_RF$Predictions$Measured),
                                          data_frame("learning_algorithm"="RF","Number_of_samples" = 30, "Property"="Clay" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_Clay_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_2_Clay_CatBoost$Predictions$Predicted,BB.30_2_Clay_CatBoost$Predictions$Measured),
                                                data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 30, "Property"="Clay" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_Clay_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_2_Clay_MLR$Predictions$Predicted,BB.30_2_Clay_MLR$Predictions$Measured),
                                           data_frame("learning_algorithm"="MLR","Number_of_samples" = 30, "Property"="Clay" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_Clay_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_2_Clay_SVR$Predictions$Predicted,BB.30_2_Clay_SVR$Predictions$Measured),
                                           data_frame("learning_algorithm"="SVR","Number_of_samples" = 30, "Property"="Clay" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))

BB.30_2_pH_Point_performance_RF<- cbind(point_prediction_performance(BB.30_2_pH_RF$Predictions$Predicted,BB.30_2_pH_RF$Predictions$Measured),
                                        data_frame("learning_algorithm"="RF","Number_of_samples" = 30, "Property"="pH" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_pH_Point_performance_CatBoost<- cbind(point_prediction_performance(BB.30_2_pH_CatBoost$Predictions$Predicted,BB.30_2_pH_CatBoost$Predictions$Measured),
                                              data_frame("learning_algorithm"="CatBoost","Number_of_samples" = 30, "Property"="pH" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_pH_Point_performance_MLR<- cbind(point_prediction_performance(BB.30_2_pH_MLR$Predictions$Predicted,BB.30_2_pH_MLR$Predictions$Measured),
                                         data_frame("learning_algorithm"="MLR","Number_of_samples" = 30, "Property"="pH" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))
BB.30_2_pH_Point_performance_SVR<- cbind(point_prediction_performance(BB.30_2_pH_SVR$Predictions$Predicted,BB.30_2_pH_SVR$Predictions$Measured),
                                         data_frame("learning_algorithm"="SVR","Number_of_samples" = 30, "Property"="pH" ,Sensors = c("ERa, γ, DEM, RSS, VI"),Dataset="BB.30_2"))

BB.30_2_SOC_Point_performance_RF
BB.30_2_SOC_Point_performance_CatBoost
BB.30_2_SOC_Point_performance_MLR
BB.30_2_SOC_Point_performance_SVR

BB.30_2_Clay_Point_performance_RF
BB.30_2_Clay_Point_performance_CatBoost
BB.30_2_Clay_Point_performance_MLR
BB.30_2_Clay_Point_performance_SVR

BB.30_2_pH_Point_performance_RF
BB.30_2_pH_Point_performance_CatBoost
BB.30_2_pH_Point_performance_MLR
BB.30_2_pH_Point_performance_SVR


# Bind all
Results_bind <- rbind(
  SSP.460_SOC_Point_performance_RF,
  SSP.460_SOC_Point_performance_CatBoost,
  SSP.460_SOC_Point_performance_MLR,
  SSP.460_SOC_Point_performance_SVR,
  SSP.460_Clay_Point_performance_RF,
  SSP.460_Clay_Point_performance_CatBoost,
  SSP.460_Clay_Point_performance_MLR,
  SSP.460_Clay_Point_performance_SVR,
  SSP.460_pH_Point_performance_RF,
  SSP.460_pH_Point_performance_CatBoost,
  SSP.460_pH_Point_performance_MLR,
  SSP.460_pH_Point_performance_SVR,
  BB.250_SOC_Point_performance_RF,
  BB.250_SOC_Point_performance_CatBoost,
  BB.250_SOC_Point_performance_MLR,
  BB.250_SOC_Point_performance_SVR,
  BB.250_Clay_Point_performance_RF,
  BB.250_Clay_Point_performance_CatBoost,
  BB.250_Clay_Point_performance_MLR,
  BB.250_Clay_Point_performance_SVR,
  BB.250_pH_Point_performance_RF,
  BB.250_pH_Point_performance_CatBoost,
  BB.250_pH_Point_performance_MLR,
  BB.250_pH_Point_performance_SVR,
  SP.231_SOM_Point_performance_RF,
  SP.231_SOM_Point_performance_CatBoost,
  SP.231_SOM_Point_performance_MLR,
  SP.231_SOM_Point_performance_SVR,
  SP.231_Clay_Point_performance_RF,
  SP.231_Clay_Point_performance_CatBoost,
  SP.231_Clay_Point_performance_MLR,
  SP.231_Clay_Point_performance_SVR,
  SP.231_pH_Point_performance_RF,
  SP.231_pH_Point_performance_CatBoost,
  SP.231_pH_Point_performance_MLR,
  SP.231_pH_Point_performance_SVR,
  B.204_SOC_Point_performance_RF,
  B.204_SOC_Point_performance_CatBoost,
  B.204_SOC_Point_performance_MLR,
  B.204_SOC_Point_performance_SVR,
  B.204_Clay_Point_performance_RF,
  B.204_Clay_Point_performance_CatBoost,
  B.204_Clay_Point_performance_MLR,
  B.204_Clay_Point_performance_SVR,
  B.204_pH_Point_performance_RF,
  B.204_pH_Point_performance_CatBoost,
  B.204_pH_Point_performance_MLR,
  B.204_pH_Point_performance_SVR,
  G.150_SOC_Point_performance_RF,
  G.150_SOC_Point_performance_CatBoost,
  G.150_SOC_Point_performance_MLR,
  G.150_SOC_Point_performance_SVR,
  G.150_Clay_Point_performance_RF,
  G.150_Clay_Point_performance_CatBoost,
  G.150_Clay_Point_performance_MLR,
  G.150_Clay_Point_performance_SVR,
  G.150_pH_Point_performance_RF,
  G.150_pH_Point_performance_CatBoost,
  G.150_pH_Point_performance_MLR,
  G.150_pH_Point_performance_SVR,
  H.138_SOC_Point_performance_RF,
  H.138_SOC_Point_performance_CatBoost,
  H.138_SOC_Point_performance_MLR,
  H.138_SOC_Point_performance_SVR,
  H.138_Clay_Point_performance_RF,
  H.138_Clay_Point_performance_CatBoost,
  H.138_Clay_Point_performance_MLR,
  H.138_Clay_Point_performance_SVR,
  H.138_pH_Point_performance_RF,
  H.138_pH_Point_performance_CatBoost,
  H.138_pH_Point_performance_MLR,
  H.138_pH_Point_performance_SVR,
  SL.125_SOM_Point_performance_RF,
  SL.125_SOM_Point_performance_CatBoost,
  SL.125_SOM_Point_performance_MLR,
  SL.125_SOM_Point_performance_SVR,
  SL.125_Clay_Point_performance_RF,
  SL.125_Clay_Point_performance_CatBoost,
  SL.125_Clay_Point_performance_MLR,
  SL.125_Clay_Point_performance_SVR,
  SL.125_pH_Point_performance_RF,
  SL.125_pH_Point_performance_CatBoost,
  SL.125_pH_Point_performance_MLR,
  SL.125_pH_Point_performance_SVR,
  UL.120_SOM_Point_performance_RF,
  UL.120_SOM_Point_performance_CatBoost,
  UL.120_SOM_Point_performance_MLR,
  UL.120_SOM_Point_performance_SVR,
  UL.120_Clay_Point_performance_RF,
  UL.120_Clay_Point_performance_CatBoost,
  UL.120_Clay_Point_performance_MLR,
  UL.120_Clay_Point_performance_SVR,
  UL.120_pH_Point_performance_RF,
  UL.120_pH_Point_performance_CatBoost,
  UL.120_pH_Point_performance_MLR,
  UL.120_pH_Point_performance_SVR,
  NRW.115_SOC_Point_performance_RF,
  NRW.115_SOC_Point_performance_CatBoost,
  NRW.115_SOC_Point_performance_MLR,
  NRW.115_SOC_Point_performance_SVR,
  NRW.115_Clay_Point_performance_RF,
  NRW.115_Clay_Point_performance_CatBoost,
  NRW.115_Clay_Point_performance_MLR,
  NRW.115_Clay_Point_performance_SVR,
  NRW.115_pH_Point_performance_RF,
  NRW.115_pH_Point_performance_CatBoost,
  NRW.115_pH_Point_performance_MLR,
  NRW.115_pH_Point_performance_SVR,
  MG.112_SOC_Point_performance_RF,
  MG.112_SOC_Point_performance_CatBoost,
  MG.112_SOC_Point_performance_MLR,
  MG.112_SOC_Point_performance_SVR,
  MG.112_Clay_Point_performance_RF,
  MG.112_Clay_Point_performance_CatBoost,
  MG.112_Clay_Point_performance_MLR,
  MG.112_Clay_Point_performance_SVR,
  MG.112_pH_Point_performance_RF,
  MG.112_pH_Point_performance_CatBoost,
  MG.112_pH_Point_performance_MLR,
  MG.112_pH_Point_performance_SVR,
  SA.112_SOC_Point_performance_RF,
  SA.112_SOC_Point_performance_CatBoost,
  SA.112_SOC_Point_performance_MLR,
  SA.112_SOC_Point_performance_SVR,
  SA.112_Clay_Point_performance_RF,
  SA.112_Clay_Point_performance_CatBoost,
  SA.112_Clay_Point_performance_MLR,
  SA.112_Clay_Point_performance_SVR,
  SA.112_pH_Point_performance_RF,
  SA.112_pH_Point_performance_CatBoost,
  SA.112_pH_Point_performance_MLR,
  SA.112_pH_Point_performance_SVR,
  G.104_SOC_Point_performance_RF,
  G.104_SOC_Point_performance_CatBoost,
  G.104_SOC_Point_performance_MLR,
  G.104_SOC_Point_performance_SVR,
  G.104_Clay_Point_performance_RF,
  G.104_Clay_Point_performance_CatBoost,
  G.104_Clay_Point_performance_MLR,
  G.104_Clay_Point_performance_SVR,
  G.104_pH_Point_performance_RF,
  G.104_pH_Point_performance_CatBoost,
  G.104_pH_Point_performance_MLR,
  G.104_pH_Point_performance_SVR,
  MGS.101_SOC_Point_performance_RF,
  MGS.101_SOC_Point_performance_CatBoost,
  MGS.101_SOC_Point_performance_MLR,
  MGS.101_SOC_Point_performance_SVR,
  MGS.101_Clay_Point_performance_RF,
  MGS.101_Clay_Point_performance_CatBoost,
  MGS.101_Clay_Point_performance_MLR,
  MGS.101_Clay_Point_performance_SVR,
  MGS.101_pH_Point_performance_RF,
  MGS.101_pH_Point_performance_CatBoost,
  MGS.101_pH_Point_performance_MLR,
  MGS.101_pH_Point_performance_SVR,
  CV.98_SOC_Point_performance_RF,
  CV.98_SOC_Point_performance_CatBoost,
  CV.98_SOC_Point_performance_MLR,
  CV.98_SOC_Point_performance_SVR,
  CV.98_Clay_Point_performance_RF,
  CV.98_Clay_Point_performance_CatBoost,
  CV.98_Clay_Point_performance_MLR,
  CV.98_Clay_Point_performance_SVR,
  CV.98_pH_Point_performance_RF,
  CV.98_pH_Point_performance_CatBoost,
  CV.98_pH_Point_performance_MLR,
  CV.98_pH_Point_performance_SVR,
  SC.93_SOC_Point_performance_RF,
  SC.93_SOC_Point_performance_CatBoost,
  SC.93_SOC_Point_performance_MLR,
  SC.93_SOC_Point_performance_SVR,
  SC.93_Clay_Point_performance_RF,
  SC.93_Clay_Point_performance_CatBoost,
  SC.93_Clay_Point_performance_MLR,
  SC.93_Clay_Point_performance_SVR,
  SC.93_pH_Point_performance_RF,
  SC.93_pH_Point_performance_CatBoost,
  SC.93_pH_Point_performance_MLR,
  SC.93_pH_Point_performance_SVR,
  BB.72_SOC_Point_performance_RF,
  BB.72_SOC_Point_performance_CatBoost,
  BB.72_SOC_Point_performance_MLR,
  BB.72_SOC_Point_performance_SVR,
  BB.72_Clay_Point_performance_RF,
  BB.72_Clay_Point_performance_CatBoost,
  BB.72_Clay_Point_performance_MLR,
  BB.72_Clay_Point_performance_SVR,
  BB.72_pH_Point_performance_RF,
  BB.72_pH_Point_performance_CatBoost,
  BB.72_pH_Point_performance_MLR,
  BB.72_pH_Point_performance_SVR,
  NRW.62_SOC_Point_performance_RF,
  NRW.62_SOC_Point_performance_CatBoost,
  NRW.62_SOC_Point_performance_MLR,
  NRW.62_SOC_Point_performance_SVR,
  NRW.62_Clay_Point_performance_RF,
  NRW.62_Clay_Point_performance_CatBoost,
  NRW.62_Clay_Point_performance_MLR,
  NRW.62_Clay_Point_performance_SVR,
  NRW.62_pH_Point_performance_RF,
  NRW.62_pH_Point_performance_CatBoost,
  NRW.62_pH_Point_performance_MLR,
  NRW.62_pH_Point_performance_SVR,
  RP.62_SOC_Point_performance_RF,
  RP.62_SOC_Point_performance_CatBoost,
  RP.62_SOC_Point_performance_MLR,
  RP.62_SOC_Point_performance_SVR,
  RP.62_Clay_Point_performance_RF,
  RP.62_Clay_Point_performance_CatBoost,
  RP.62_Clay_Point_performance_MLR,
  RP.62_Clay_Point_performance_SVR,
  RP.62_pH_Point_performance_RF,
  RP.62_pH_Point_performance_CatBoost,
  RP.62_pH_Point_performance_MLR,
  RP.62_pH_Point_performance_SVR,
  SSP.58_SOC_Point_performance_RF,
  SSP.58_SOC_Point_performance_CatBoost,
  SSP.58_SOC_Point_performance_MLR,
  SSP.58_SOC_Point_performance_SVR,
  SSP.58_Clay_Point_performance_RF,
  SSP.58_Clay_Point_performance_CatBoost,
  SSP.58_Clay_Point_performance_MLR,
  SSP.58_Clay_Point_performance_SVR,
  SSP.58_pH_Point_performance_RF,
  SSP.58_pH_Point_performance_CatBoost,
  SSP.58_pH_Point_performance_MLR,
  SSP.58_pH_Point_performance_SVR,
  NSW.52_SOC_Point_performance_RF,
  NSW.52_SOC_Point_performance_CatBoost,
  NSW.52_SOC_Point_performance_MLR,
  NSW.52_SOC_Point_performance_SVR,
  NSW.52_Clay_Point_performance_RF,
  NSW.52_Clay_Point_performance_CatBoost,
  NSW.52_Clay_Point_performance_MLR,
  NSW.52_Clay_Point_performance_SVR,
  NSW.52_pH_Point_performance_RF,
  NSW.52_pH_Point_performance_CatBoost,
  NSW.52_pH_Point_performance_MLR,
  NSW.52_pH_Point_performance_SVR,
  BB.51_SOC_Point_performance_RF,
  BB.51_SOC_Point_performance_CatBoost,
  BB.51_SOC_Point_performance_MLR,
  BB.51_SOC_Point_performance_SVR,
  BB.51_Clay_Point_performance_RF,
  BB.51_Clay_Point_performance_CatBoost,
  BB.51_Clay_Point_performance_MLR,
  BB.51_Clay_Point_performance_SVR,
  BB.51_pH_Point_performance_RF,
  BB.51_pH_Point_performance_CatBoost,
  BB.51_pH_Point_performance_MLR,
  BB.51_pH_Point_performance_SVR,
  W.50_SOC_Point_performance_RF,
  W.50_SOC_Point_performance_CatBoost,
  W.50_SOC_Point_performance_MLR,
  W.50_SOC_Point_performance_SVR,
  W.50_Clay_Point_performance_RF,
  W.50_Clay_Point_performance_CatBoost,
  W.50_Clay_Point_performance_MLR,
  W.50_Clay_Point_performance_SVR,
  W.50_pH_Point_performance_RF,
  W.50_pH_Point_performance_CatBoost,
  W.50_pH_Point_performance_MLR,
  W.50_pH_Point_performance_SVR,
  SC.50_SOC_Point_performance_RF,
  SC.50_SOC_Point_performance_CatBoost,
  SC.50_SOC_Point_performance_MLR,
  SC.50_SOC_Point_performance_SVR,
  SC.50_Clay_Point_performance_RF,
  SC.50_Clay_Point_performance_CatBoost,
  SC.50_Clay_Point_performance_MLR,
  SC.50_Clay_Point_performance_SVR,
  SC.50_pH_Point_performance_RF,
  SC.50_pH_Point_performance_CatBoost,
  SC.50_pH_Point_performance_MLR,
  SC.50_pH_Point_performance_SVR,
  PC.45_SOC_Point_performance_RF,
  PC.45_SOC_Point_performance_CatBoost,
  PC.45_SOC_Point_performance_MLR,
  PC.45_SOC_Point_performance_SVR,
  PC.45_Clay_Point_performance_RF,
  PC.45_Clay_Point_performance_CatBoost,
  PC.45_Clay_Point_performance_MLR,
  PC.45_Clay_Point_performance_SVR,
  PC.45_pH_Point_performance_RF,
  PC.45_pH_Point_performance_CatBoost,
  PC.45_pH_Point_performance_MLR,
  PC.45_pH_Point_performance_SVR,
  MG.44_SOC_Point_performance_RF,
  MG.44_SOC_Point_performance_CatBoost,
  MG.44_SOC_Point_performance_MLR,
  MG.44_SOC_Point_performance_SVR,
  MG.44_Clay_Point_performance_RF,
  MG.44_Clay_Point_performance_CatBoost,
  MG.44_Clay_Point_performance_MLR,
  MG.44_Clay_Point_performance_SVR,
  MG.44_pH_Point_performance_RF,
  MG.44_pH_Point_performance_CatBoost,
  MG.44_pH_Point_performance_MLR,
  MG.44_pH_Point_performance_SVR,
  NRW.42_SOC_Point_performance_RF,
  NRW.42_SOC_Point_performance_CatBoost,
  NRW.42_SOC_Point_performance_MLR,
  NRW.42_SOC_Point_performance_SVR,
  NRW.42_Clay_Point_performance_RF,
  NRW.42_Clay_Point_performance_CatBoost,
  NRW.42_Clay_Point_performance_MLR,
  NRW.42_Clay_Point_performance_SVR,
  NRW.42_pH_Point_performance_RF,
  NRW.42_pH_Point_performance_CatBoost,
  NRW.42_pH_Point_performance_MLR,
  NRW.42_pH_Point_performance_SVR,
  SM.40_SOC_Point_performance_RF,
  SM.40_SOC_Point_performance_CatBoost,
  SM.40_SOC_Point_performance_MLR,
  SM.40_SOC_Point_performance_SVR,
  SM.40_Clay_Point_performance_RF,
  SM.40_Clay_Point_performance_CatBoost,
  SM.40_Clay_Point_performance_MLR,
  SM.40_Clay_Point_performance_SVR,
  SM.40_pH_Point_performance_RF,
  SM.40_pH_Point_performance_CatBoost,
  SM.40_pH_Point_performance_MLR,
  SM.40_pH_Point_performance_SVR,
  MWP.36_SOC_Point_performance_RF,
  MWP.36_SOC_Point_performance_CatBoost,
  MWP.36_SOC_Point_performance_MLR,
  MWP.36_SOC_Point_performance_SVR,
  MWP.36_Clay_Point_performance_RF,
  MWP.36_Clay_Point_performance_CatBoost,
  MWP.36_Clay_Point_performance_MLR,
  MWP.36_Clay_Point_performance_SVR,
  MWP.36_pH_Point_performance_RF,
  MWP.36_pH_Point_performance_CatBoost,
  MWP.36_pH_Point_performance_MLR,
  MWP.36_pH_Point_performance_SVR,
  O.32_SOC_Point_performance_RF,
  O.32_SOC_Point_performance_CatBoost,
  O.32_SOC_Point_performance_MLR,
  O.32_SOC_Point_performance_SVR,
  O.32_Clay_Point_performance_RF,
  O.32_Clay_Point_performance_CatBoost,
  O.32_Clay_Point_performance_MLR,
  O.32_Clay_Point_performance_SVR,
  O.32_pH_Point_performance_RF,
  O.32_pH_Point_performance_CatBoost,
  O.32_pH_Point_performance_MLR,
  O.32_pH_Point_performance_SVR,
  BB.30_1_SOC_Point_performance_RF,
  BB.30_1_SOC_Point_performance_CatBoost,
  BB.30_1_SOC_Point_performance_MLR,
  BB.30_1_SOC_Point_performance_SVR,
  BB.30_1_Clay_Point_performance_RF,
  BB.30_1_Clay_Point_performance_CatBoost,
  BB.30_1_Clay_Point_performance_MLR,
  BB.30_1_Clay_Point_performance_SVR,
  BB.30_1_pH_Point_performance_RF,
  BB.30_1_pH_Point_performance_CatBoost,
  BB.30_1_pH_Point_performance_MLR,
  BB.30_1_pH_Point_performance_SVR,
  BB.30_2_SOC_Point_performance_RF,
  BB.30_2_SOC_Point_performance_CatBoost,
  BB.30_2_SOC_Point_performance_MLR,
  BB.30_2_SOC_Point_performance_SVR,
  BB.30_2_Clay_Point_performance_RF,
  BB.30_2_Clay_Point_performance_CatBoost,
  BB.30_2_Clay_Point_performance_MLR,
  BB.30_2_Clay_Point_performance_SVR,
  BB.30_2_pH_Point_performance_RF,
  BB.30_2_pH_Point_performance_CatBoost,
  BB.30_2_pH_Point_performance_MLR,
  BB.30_2_pH_Point_performance_SVR
)


# Store results
saveRDS(object = Results_bind,file = "Benchmarking_results_analysis/Results_bind.rds")
