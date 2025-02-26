library(dplyr)
library(ggplot2)
library(ggtext)
library(tidyr)
library(stringr)

# Bind all Hyperparameter results

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


RF_with_spec_bind <- rbind(
  SSP.460_SOC_RF$Best_Hyperparameters,
  SSP.460_Clay_RF$Best_Hyperparameters,
  SSP.460_pH_RF$Best_Hyperparameters,

  SP.231_SOM_RF$Best_Hyperparameters,
  SP.231_Clay_RF$Best_Hyperparameters,
  SP.231_pH_RF$Best_Hyperparameters,

  H.138_SOC_RF$Best_Hyperparameters,
  H.138_Clay_RF$Best_Hyperparameters,
  H.138_pH_RF$Best_Hyperparameters,

  SL.125_SOM_RF$Best_Hyperparameters,
  SL.125_Clay_RF$Best_Hyperparameters,
  SL.125_pH_RF$Best_Hyperparameters,

  UL.120_SOM_RF$Best_Hyperparameters,
  UL.120_Clay_RF$Best_Hyperparameters,
  UL.120_pH_RF$Best_Hyperparameters,

  NRW.115_SOC_RF$Best_Hyperparameters,
  NRW.115_Clay_RF$Best_Hyperparameters,
  NRW.115_pH_RF$Best_Hyperparameters,

  SA.112_SOC_RF$Best_Hyperparameters,
  SA.112_Clay_RF$Best_Hyperparameters,
  SA.112_pH_RF$Best_Hyperparameters,

  CV.98_SOC_RF$Best_Hyperparameters,
  CV.98_Clay_RF$Best_Hyperparameters,
  CV.98_pH_RF$Best_Hyperparameters,

  SC.93_SOC_RF$Best_Hyperparameters,
  SC.93_Clay_RF$Best_Hyperparameters,
  SC.93_pH_RF$Best_Hyperparameters,

  NRW.62_SOC_RF$Best_Hyperparameters,
  NRW.62_Clay_RF$Best_Hyperparameters,
  NRW.62_pH_RF$Best_Hyperparameters,

  RP.62_SOC_RF$Best_Hyperparameters,
  RP.62_Clay_RF$Best_Hyperparameters,
  RP.62_pH_RF$Best_Hyperparameters,

  SSP.58_SOC_RF$Best_Hyperparameters,
  SSP.58_Clay_RF$Best_Hyperparameters,
  SSP.58_pH_RF$Best_Hyperparameters,

  MG.44_SOC_RF$Best_Hyperparameters,
  MG.44_Clay_RF$Best_Hyperparameters,
  MG.44_pH_RF$Best_Hyperparameters,

  NRW.42_SOC_RF$Best_Hyperparameters,
  NRW.42_Clay_RF$Best_Hyperparameters,
  NRW.42_pH_RF$Best_Hyperparameters,

  O.32_SOC_RF$Best_Hyperparameters,
  O.32_Clay_RF$Best_Hyperparameters,
  O.32_pH_RF$Best_Hyperparameters
)




CatBoost_with_spec_bind <- rbind(
  SSP.460_SOC_CatBoost$Best_Hyperparameters,
  SSP.460_Clay_CatBoost$Best_Hyperparameters,
  SSP.460_pH_CatBoost$Best_Hyperparameters,

  SP.231_SOM_CatBoost$Best_Hyperparameters,
  SP.231_Clay_CatBoost$Best_Hyperparameters,
  SP.231_pH_CatBoost$Best_Hyperparameters,

  H.138_SOC_CatBoost$Best_Hyperparameters,
  H.138_Clay_CatBoost$Best_Hyperparameters,
  H.138_pH_CatBoost$Best_Hyperparameters,

  SL.125_SOM_CatBoost$Best_Hyperparameters,
  SL.125_Clay_CatBoost$Best_Hyperparameters,
  SL.125_pH_CatBoost$Best_Hyperparameters,

  UL.120_SOM_CatBoost$Best_Hyperparameters,
  UL.120_Clay_CatBoost$Best_Hyperparameters,
  UL.120_pH_CatBoost$Best_Hyperparameters,

  NRW.115_SOC_CatBoost$Best_Hyperparameters,
  NRW.115_Clay_CatBoost$Best_Hyperparameters,
  NRW.115_pH_CatBoost$Best_Hyperparameters,

  SA.112_SOC_CatBoost$Best_Hyperparameters,
  SA.112_Clay_CatBoost$Best_Hyperparameters,
  SA.112_pH_CatBoost$Best_Hyperparameters,

  CV.98_SOC_CatBoost$Best_Hyperparameters,
  CV.98_Clay_CatBoost$Best_Hyperparameters,
  CV.98_pH_CatBoost$Best_Hyperparameters,

  SC.93_SOC_CatBoost$Best_Hyperparameters,
  SC.93_Clay_CatBoost$Best_Hyperparameters,
  SC.93_pH_CatBoost$Best_Hyperparameters,

  NRW.62_SOC_CatBoost$Best_Hyperparameters,
  NRW.62_Clay_CatBoost$Best_Hyperparameters,
  NRW.62_pH_CatBoost$Best_Hyperparameters,

  RP.62_SOC_CatBoost$Best_Hyperparameters,
  RP.62_Clay_CatBoost$Best_Hyperparameters,
  RP.62_pH_CatBoost$Best_Hyperparameters,

  SSP.58_SOC_CatBoost$Best_Hyperparameters,
  SSP.58_Clay_CatBoost$Best_Hyperparameters,
  SSP.58_pH_CatBoost$Best_Hyperparameters,

  MG.44_SOC_CatBoost$Best_Hyperparameters,
  MG.44_Clay_CatBoost$Best_Hyperparameters,
  MG.44_pH_CatBoost$Best_Hyperparameters,

  NRW.42_SOC_CatBoost$Best_Hyperparameters,
  NRW.42_Clay_CatBoost$Best_Hyperparameters,
  NRW.42_pH_CatBoost$Best_Hyperparameters,

  O.32_SOC_CatBoost$Best_Hyperparameters,
  O.32_Clay_CatBoost$Best_Hyperparameters,
  O.32_pH_CatBoost$Best_Hyperparameters
)






SVR_with_spec_bind <- rbind(
  SSP.460_SOC_SVR$Best_Hyperparameters,
  SSP.460_Clay_SVR$Best_Hyperparameters,
  SSP.460_pH_SVR$Best_Hyperparameters,

  SP.231_SOM_SVR$Best_Hyperparameters,
  SP.231_Clay_SVR$Best_Hyperparameters,
  SP.231_pH_SVR$Best_Hyperparameters,

  H.138_SOC_SVR$Best_Hyperparameters,
  H.138_Clay_SVR$Best_Hyperparameters,
  H.138_pH_SVR$Best_Hyperparameters,

  SL.125_SOM_SVR$Best_Hyperparameters,
  SL.125_Clay_SVR$Best_Hyperparameters,
  SL.125_pH_SVR$Best_Hyperparameters,

  UL.120_SOM_SVR$Best_Hyperparameters,
  UL.120_Clay_SVR$Best_Hyperparameters,
  UL.120_pH_SVR$Best_Hyperparameters,

  NRW.115_SOC_SVR$Best_Hyperparameters,
  NRW.115_Clay_SVR$Best_Hyperparameters,
  NRW.115_pH_SVR$Best_Hyperparameters,

  SA.112_SOC_SVR$Best_Hyperparameters,
  SA.112_Clay_SVR$Best_Hyperparameters,
  SA.112_pH_SVR$Best_Hyperparameters,

  CV.98_SOC_SVR$Best_Hyperparameters,
  CV.98_Clay_SVR$Best_Hyperparameters,
  CV.98_pH_SVR$Best_Hyperparameters,

  SC.93_SOC_SVR$Best_Hyperparameters,
  SC.93_Clay_SVR$Best_Hyperparameters,
  SC.93_pH_SVR$Best_Hyperparameters,

  NRW.62_SOC_SVR$Best_Hyperparameters,
  NRW.62_Clay_SVR$Best_Hyperparameters,
  NRW.62_pH_SVR$Best_Hyperparameters,

  RP.62_SOC_SVR$Best_Hyperparameters,
  RP.62_Clay_SVR$Best_Hyperparameters,
  RP.62_pH_SVR$Best_Hyperparameters,

  SSP.58_SOC_SVR$Best_Hyperparameters,
  SSP.58_Clay_SVR$Best_Hyperparameters,
  SSP.58_pH_SVR$Best_Hyperparameters,

  MG.44_SOC_SVR$Best_Hyperparameters,
  MG.44_Clay_SVR$Best_Hyperparameters,
  MG.44_pH_SVR$Best_Hyperparameters,

  NRW.42_SOC_SVR$Best_Hyperparameters,
  NRW.42_Clay_SVR$Best_Hyperparameters,
  NRW.42_pH_SVR$Best_Hyperparameters,

  O.32_SOC_SVR$Best_Hyperparameters,
  O.32_Clay_SVR$Best_Hyperparameters,
  O.32_pH_SVR$Best_Hyperparameters
)


MLR_with_spec_bind <- rbind(
  SSP.460_SOC_MLR$Best_Hyperparameters,
  SSP.460_Clay_MLR$Best_Hyperparameters,
  SSP.460_pH_MLR$Best_Hyperparameters,

  SP.231_SOM_MLR$Best_Hyperparameters,
  SP.231_Clay_MLR$Best_Hyperparameters,
  SP.231_pH_MLR$Best_Hyperparameters,

  H.138_SOC_MLR$Best_Hyperparameters,
  H.138_Clay_MLR$Best_Hyperparameters,
  H.138_pH_MLR$Best_Hyperparameters,

  SL.125_SOM_MLR$Best_Hyperparameters,
  SL.125_Clay_MLR$Best_Hyperparameters,
  SL.125_pH_MLR$Best_Hyperparameters,

  UL.120_SOM_MLR$Best_Hyperparameters,
  UL.120_Clay_MLR$Best_Hyperparameters,
  UL.120_pH_MLR$Best_Hyperparameters,

  NRW.115_SOC_MLR$Best_Hyperparameters,
  NRW.115_Clay_MLR$Best_Hyperparameters,
  NRW.115_pH_MLR$Best_Hyperparameters,

  SA.112_SOC_MLR$Best_Hyperparameters,
  SA.112_Clay_MLR$Best_Hyperparameters,
  SA.112_pH_MLR$Best_Hyperparameters,

  CV.98_SOC_MLR$Best_Hyperparameters,
  CV.98_Clay_MLR$Best_Hyperparameters,
  CV.98_pH_MLR$Best_Hyperparameters,

  SC.93_SOC_MLR$Best_Hyperparameters,
  SC.93_Clay_MLR$Best_Hyperparameters,
  SC.93_pH_MLR$Best_Hyperparameters,

  NRW.62_SOC_MLR$Best_Hyperparameters,
  NRW.62_Clay_MLR$Best_Hyperparameters,
  NRW.62_pH_MLR$Best_Hyperparameters,

  RP.62_SOC_MLR$Best_Hyperparameters,
  RP.62_Clay_MLR$Best_Hyperparameters,
  RP.62_pH_MLR$Best_Hyperparameters,

  SSP.58_SOC_MLR$Best_Hyperparameters,
  SSP.58_Clay_MLR$Best_Hyperparameters,
  SSP.58_pH_MLR$Best_Hyperparameters,

  MG.44_SOC_MLR$Best_Hyperparameters,
  MG.44_Clay_MLR$Best_Hyperparameters,
  MG.44_pH_MLR$Best_Hyperparameters,

  NRW.42_SOC_MLR$Best_Hyperparameters,
  NRW.42_Clay_MLR$Best_Hyperparameters,
  NRW.42_pH_MLR$Best_Hyperparameters,

  O.32_SOC_MLR$Best_Hyperparameters,
  O.32_Clay_MLR$Best_Hyperparameters,
  O.32_pH_MLR$Best_Hyperparameters
)


# Fig. C2
SVR_pca_counts <- SVR_with_spec_bind %>%
  filter(Dimensionality_reduction == "PCA") %>%
  group_by(PCA_number) %>%
  summarise(Count = n(), .groups = 'drop')

SVR_pca_counts$Percentage <- (SVR_pca_counts$Count / sum(SVR_pca_counts$Count)) * 100
SVR_pca_counts$Method <- "SVR"

MLR_pca_counts <- MLR_with_spec_bind %>%
  filter(Dimensionality_reduction == "PCA") %>%
  group_by(PCA_number) %>%
  summarise(Count = n(), .groups = 'drop')

MLR_pca_counts$Percentage <- (MLR_pca_counts$Count / sum(MLR_pca_counts$Count)) * 100
MLR_pca_counts$Method <- "MLR"

CatBoost_pca_counts <- CatBoost_with_spec_bind %>%
  filter(Dimensionality_reduction == "PCA") %>%
  group_by(PCA_number) %>%
  summarise(Count = n(), .groups = 'drop')

CatBoost_pca_counts$Percentage <- (CatBoost_pca_counts$Count / sum(CatBoost_pca_counts$Count)) * 100
CatBoost_pca_counts$Method <- "CatBoost"

RF_pca_counts <- RF_with_spec_bind %>%
  filter(Dimensionality_reduction == "PCA") %>%
  group_by(PCA_number) %>%
  summarise(Count = n(), .groups = 'drop')

RF_pca_counts$Percentage <- (RF_pca_counts$Count / sum(RF_pca_counts$Count)) * 100
RF_pca_counts$Method <- "RF"

PCA_all_models <- rbind(SVR_pca_counts, MLR_pca_counts, CatBoost_pca_counts, RF_pca_counts)






Fig_C2 <- ggplot(PCA_all_models, aes(x = PCA_number , y = Percentage , color = Method  )) +
  geom_line(stat = "identity", size=2)+
  scale_color_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Best Number of PCA Components",
       y = "Relative Frequency (in %)",
       color = "Learning Algorithms") +
  theme_bw()+
  theme(
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 14),
    legend.key.height = unit(1, "cm"),
    legend.key.width = unit(1.2, "cm"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.title = element_text(size = 18),
    axis.text = element_text(size = 16,color = "black"),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  scale_y_continuous(expand = c(0, 0), limits = c(0, 20))
Fig_C2

ggsave("Benchmarking_results_analysis//Fig_C2.tiff", plot = Fig_C2, dpi = 300, width = 15, height = 7.3, units = "in", device = "tiff")



# Fig. C1
SVR_with_spec_bind_dimensionality_red <- SVR_with_spec_bind %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

SVR_with_spec_bind_dimensionality_red$count <- (SVR_with_spec_bind_dimensionality_red$count/450) *100
SVR_with_spec_bind_dimensionality_red$Method <- "SVR"


MLR_with_spec_bind_dimensionality_red <- MLR_with_spec_bind %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')


MLR_with_spec_bind_dimensionality_red <- rbind(
  MLR_with_spec_bind_dimensionality_red,
  data.frame(condition = "CMF (cutoff = 1.0)", count = 0)
)
MLR_with_spec_bind_dimensionality_red[c(2,3),] <- MLR_with_spec_bind_dimensionality_red[c(3,2),]


MLR_with_spec_bind_dimensionality_red$count <- (MLR_with_spec_bind_dimensionality_red$count/450) *100
MLR_with_spec_bind_dimensionality_red$Method <- "MLR"

RF_with_spec_bind_dimensionality_red <- RF_with_spec_bind %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_  #
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

RF_with_spec_bind_dimensionality_red$count <- (RF_with_spec_bind_dimensionality_red$count/450) *100
RF_with_spec_bind_dimensionality_red$Method <- "RF"




CatBoost_with_spec_bind_dimensionality_red <- CatBoost_with_spec_bind %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

CatBoost_with_spec_bind_dimensionality_red$count <- (CatBoost_with_spec_bind_dimensionality_red$count/450) *100
CatBoost_with_spec_bind_dimensionality_red$Method <- "CatBoost"


all_models_with_spec_bind_dimensionality_red <- rbind(
  SVR_with_spec_bind_dimensionality_red,
  MLR_with_spec_bind_dimensionality_red,
  RF_with_spec_bind_dimensionality_red,
  CatBoost_with_spec_bind_dimensionality_red
)

all_models_with_spec_bind_dimensionality_red$condition <- gsub("CMF \\(cutoff = 1.0\\)", "None", all_models_with_spec_bind_dimensionality_red$condition)
all_models_with_spec_bind_dimensionality_red$condition <- gsub("CMF \\(cutoff != 1.0\\)", "CMF", all_models_with_spec_bind_dimensionality_red$condition)





all_models_with_spec_bind_dimensionality_red$title <- "All Datasets"

All <- ggplot(all_models_with_spec_bind_dimensionality_red, aes(x = condition, y = count, fill = Method  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Best Dimensionality Reduction",
       y = "Relative Frequency (in %)",
       fill = "Learning Algorithms:") +
  theme_bw()+
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.title = element_text(size = 18),
    axis.text = element_text(size = 16,color = "black"),
    axis.title.x= element_blank(),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  scale_y_continuous(expand = c(0, 0), limits = c(0, 100))+
  facet_grid(. ~ title)
All





RF_with_spec_bind_more_100 <- rbind(
  SSP.460_SOC_RF$Best_Hyperparameters,
  SSP.460_Clay_RF$Best_Hyperparameters,
  SSP.460_pH_RF$Best_Hyperparameters,

  SP.231_SOM_RF$Best_Hyperparameters,
  SP.231_Clay_RF$Best_Hyperparameters,
  SP.231_pH_RF$Best_Hyperparameters,

  H.138_SOC_RF$Best_Hyperparameters,
  H.138_Clay_RF$Best_Hyperparameters,
  H.138_pH_RF$Best_Hyperparameters,

  SL.125_SOM_RF$Best_Hyperparameters,
  SL.125_Clay_RF$Best_Hyperparameters,
  SL.125_pH_RF$Best_Hyperparameters,

  UL.120_SOM_RF$Best_Hyperparameters,
  UL.120_Clay_RF$Best_Hyperparameters,
  UL.120_pH_RF$Best_Hyperparameters,

  NRW.115_SOC_RF$Best_Hyperparameters,
  NRW.115_Clay_RF$Best_Hyperparameters,
  NRW.115_pH_RF$Best_Hyperparameters,

  SA.112_SOC_RF$Best_Hyperparameters,
  SA.112_Clay_RF$Best_Hyperparameters,
  SA.112_pH_RF$Best_Hyperparameters
)




CatBoost_with_spec_bind_more_100 <- rbind(
  SSP.460_SOC_CatBoost$Best_Hyperparameters,
  SSP.460_Clay_CatBoost$Best_Hyperparameters,
  SSP.460_pH_CatBoost$Best_Hyperparameters,

  SP.231_SOM_CatBoost$Best_Hyperparameters,
  SP.231_Clay_CatBoost$Best_Hyperparameters,
  SP.231_pH_CatBoost$Best_Hyperparameters,

  H.138_SOC_CatBoost$Best_Hyperparameters,
  H.138_Clay_CatBoost$Best_Hyperparameters,
  H.138_pH_CatBoost$Best_Hyperparameters,

  SL.125_SOM_CatBoost$Best_Hyperparameters,
  SL.125_Clay_CatBoost$Best_Hyperparameters,
  SL.125_pH_CatBoost$Best_Hyperparameters,

  UL.120_SOM_CatBoost$Best_Hyperparameters,
  UL.120_Clay_CatBoost$Best_Hyperparameters,
  UL.120_pH_CatBoost$Best_Hyperparameters,

  NRW.115_SOC_CatBoost$Best_Hyperparameters,
  NRW.115_Clay_CatBoost$Best_Hyperparameters,
  NRW.115_pH_CatBoost$Best_Hyperparameters,

  SA.112_SOC_CatBoost$Best_Hyperparameters,
  SA.112_Clay_CatBoost$Best_Hyperparameters,
  SA.112_pH_CatBoost$Best_Hyperparameters
)






SVR_with_spec_bind_more_100 <- rbind(
  SSP.460_SOC_SVR$Best_Hyperparameters,
  SSP.460_Clay_SVR$Best_Hyperparameters,
  SSP.460_pH_SVR$Best_Hyperparameters,

  SP.231_SOM_SVR$Best_Hyperparameters,
  SP.231_Clay_SVR$Best_Hyperparameters,
  SP.231_pH_SVR$Best_Hyperparameters,

  H.138_SOC_SVR$Best_Hyperparameters,
  H.138_Clay_SVR$Best_Hyperparameters,
  H.138_pH_SVR$Best_Hyperparameters,

  SL.125_SOM_SVR$Best_Hyperparameters,
  SL.125_Clay_SVR$Best_Hyperparameters,
  SL.125_pH_SVR$Best_Hyperparameters,

  UL.120_SOM_SVR$Best_Hyperparameters,
  UL.120_Clay_SVR$Best_Hyperparameters,
  UL.120_pH_SVR$Best_Hyperparameters,

  NRW.115_SOC_SVR$Best_Hyperparameters,
  NRW.115_Clay_SVR$Best_Hyperparameters,
  NRW.115_pH_SVR$Best_Hyperparameters,

  SA.112_SOC_SVR$Best_Hyperparameters,
  SA.112_Clay_SVR$Best_Hyperparameters,
  SA.112_pH_SVR$Best_Hyperparameters
)


MLR_with_spec_bind_more_100 <- rbind(
  SSP.460_SOC_MLR$Best_Hyperparameters,
  SSP.460_Clay_MLR$Best_Hyperparameters,
  SSP.460_pH_MLR$Best_Hyperparameters,

  SP.231_SOM_MLR$Best_Hyperparameters,
  SP.231_Clay_MLR$Best_Hyperparameters,
  SP.231_pH_MLR$Best_Hyperparameters,

  H.138_SOC_MLR$Best_Hyperparameters,
  H.138_Clay_MLR$Best_Hyperparameters,
  H.138_pH_MLR$Best_Hyperparameters,

  SL.125_SOM_MLR$Best_Hyperparameters,
  SL.125_Clay_MLR$Best_Hyperparameters,
  SL.125_pH_MLR$Best_Hyperparameters,

  UL.120_SOM_MLR$Best_Hyperparameters,
  UL.120_Clay_MLR$Best_Hyperparameters,
  UL.120_pH_MLR$Best_Hyperparameters,

  NRW.115_SOC_MLR$Best_Hyperparameters,
  NRW.115_Clay_MLR$Best_Hyperparameters,
  NRW.115_pH_MLR$Best_Hyperparameters,

  SA.112_SOC_MLR$Best_Hyperparameters,
  SA.112_Clay_MLR$Best_Hyperparameters,
  SA.112_pH_MLR$Best_Hyperparameters
)


SVR_with_spec_bind_more_100_dimensionality_red <- SVR_with_spec_bind_more_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

SVR_with_spec_bind_more_100_dimensionality_red$count <- (SVR_with_spec_bind_more_100_dimensionality_red$count/210) *100
SVR_with_spec_bind_more_100_dimensionality_red$Method <- "SVR"


MLR_with_spec_bind_more_100_dimensionality_red <- MLR_with_spec_bind_more_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

MLR_with_spec_bind_more_100_dimensionality_red <- rbind(
  MLR_with_spec_bind_more_100_dimensionality_red,
  data.frame(condition = "CMF (cutoff = 1.0)", count = 0)
)
MLR_with_spec_bind_more_100_dimensionality_red[c(2,3),] <- MLR_with_spec_bind_more_100_dimensionality_red[c(3,2),]

MLR_with_spec_bind_more_100_dimensionality_red$count <- (MLR_with_spec_bind_more_100_dimensionality_red$count/210) *100
MLR_with_spec_bind_more_100_dimensionality_red$Method <- "MLR"

RF_with_spec_bind_more_100_dimensionality_red <- RF_with_spec_bind_more_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

RF_with_spec_bind_more_100_dimensionality_red$count <- (RF_with_spec_bind_more_100_dimensionality_red$count/210) *100
RF_with_spec_bind_more_100_dimensionality_red$Method <- "RF"


CatBoost_with_spec_bind_more_100_dimensionality_red <- CatBoost_with_spec_bind_more_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

CatBoost_with_spec_bind_more_100_dimensionality_red$count <- (CatBoost_with_spec_bind_more_100_dimensionality_red$count/210) *100
CatBoost_with_spec_bind_more_100_dimensionality_red$Method <- "CatBoost"
CatBoost_with_spec_bind_more_100_dimensionality_red

all_models_with_spec_bind_more_100_dimensionality_red <- rbind(
  SVR_with_spec_bind_more_100_dimensionality_red,
  MLR_with_spec_bind_more_100_dimensionality_red,
  RF_with_spec_bind_more_100_dimensionality_red,
  CatBoost_with_spec_bind_more_100_dimensionality_red
)

all_models_with_spec_bind_more_100_dimensionality_red$condition <- gsub("CMF \\(cutoff = 1.0\\)", "None", all_models_with_spec_bind_more_100_dimensionality_red$condition)
all_models_with_spec_bind_more_100_dimensionality_red$condition <- gsub("CMF \\(cutoff != 1.0\\)", "CMF", all_models_with_spec_bind_more_100_dimensionality_red$condition)


all_models_with_spec_bind_more_100_dimensionality_red$title <- "Datasets with more than 100 samples"

More_100 <- ggplot(all_models_with_spec_bind_more_100_dimensionality_red, aes(x = condition, y = count, fill = Method  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Best Dimensionality Reduction",
       y = "Relative Frequency (in %)",
       fill = "Learning Algorithms:") +
  theme_bw()+
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.text.y = element_blank(),
    axis.title= element_blank(),    axis.text = element_text(size = 16,color = "black"),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  scale_y_continuous(expand = c(0, 0), limits = c(0, 100))+
  facet_grid(. ~ title)
More_100








RF_with_spec_bind_less_100 <- rbind(
  CV.98_SOC_RF$Best_Hyperparameters,
  CV.98_Clay_RF$Best_Hyperparameters,
  CV.98_pH_RF$Best_Hyperparameters,

  SC.93_SOC_RF$Best_Hyperparameters,
  SC.93_Clay_RF$Best_Hyperparameters,
  SC.93_pH_RF$Best_Hyperparameters,

  NRW.62_SOC_RF$Best_Hyperparameters,
  NRW.62_Clay_RF$Best_Hyperparameters,
  NRW.62_pH_RF$Best_Hyperparameters,

  RP.62_SOC_RF$Best_Hyperparameters,
  RP.62_Clay_RF$Best_Hyperparameters,
  RP.62_pH_RF$Best_Hyperparameters,

  SSP.58_SOC_RF$Best_Hyperparameters,
  SSP.58_Clay_RF$Best_Hyperparameters,
  SSP.58_pH_RF$Best_Hyperparameters,

  MG.44_SOC_RF$Best_Hyperparameters,
  MG.44_Clay_RF$Best_Hyperparameters,
  MG.44_pH_RF$Best_Hyperparameters,

  NRW.42_SOC_RF$Best_Hyperparameters,
  NRW.42_Clay_RF$Best_Hyperparameters,
  NRW.42_pH_RF$Best_Hyperparameters,

  O.32_SOC_RF$Best_Hyperparameters,
  O.32_Clay_RF$Best_Hyperparameters,
  O.32_pH_RF$Best_Hyperparameters
)




CatBoost_with_spec_bind_less_100 <- rbind(
  CV.98_SOC_CatBoost$Best_Hyperparameters,
  CV.98_Clay_CatBoost$Best_Hyperparameters,
  CV.98_pH_CatBoost$Best_Hyperparameters,

  SC.93_SOC_CatBoost$Best_Hyperparameters,
  SC.93_Clay_CatBoost$Best_Hyperparameters,
  SC.93_pH_CatBoost$Best_Hyperparameters,

  NRW.62_SOC_CatBoost$Best_Hyperparameters,
  NRW.62_Clay_CatBoost$Best_Hyperparameters,
  NRW.62_pH_CatBoost$Best_Hyperparameters,

  RP.62_SOC_CatBoost$Best_Hyperparameters,
  RP.62_Clay_CatBoost$Best_Hyperparameters,
  RP.62_pH_CatBoost$Best_Hyperparameters,

  SSP.58_SOC_CatBoost$Best_Hyperparameters,
  SSP.58_Clay_CatBoost$Best_Hyperparameters,
  SSP.58_pH_CatBoost$Best_Hyperparameters,

  MG.44_SOC_CatBoost$Best_Hyperparameters,
  MG.44_Clay_CatBoost$Best_Hyperparameters,
  MG.44_pH_CatBoost$Best_Hyperparameters,

  NRW.42_SOC_CatBoost$Best_Hyperparameters,
  NRW.42_Clay_CatBoost$Best_Hyperparameters,
  NRW.42_pH_CatBoost$Best_Hyperparameters,

  O.32_SOC_CatBoost$Best_Hyperparameters,
  O.32_Clay_CatBoost$Best_Hyperparameters,
  O.32_pH_CatBoost$Best_Hyperparameters
)






SVR_with_spec_bind_less_100 <- rbind(
  CV.98_SOC_SVR$Best_Hyperparameters,
  CV.98_Clay_SVR$Best_Hyperparameters,
  CV.98_pH_SVR$Best_Hyperparameters,

  SC.93_SOC_SVR$Best_Hyperparameters,
  SC.93_Clay_SVR$Best_Hyperparameters,
  SC.93_pH_SVR$Best_Hyperparameters,

  NRW.62_SOC_SVR$Best_Hyperparameters,
  NRW.62_Clay_SVR$Best_Hyperparameters,
  NRW.62_pH_SVR$Best_Hyperparameters,

  RP.62_SOC_SVR$Best_Hyperparameters,
  RP.62_Clay_SVR$Best_Hyperparameters,
  RP.62_pH_SVR$Best_Hyperparameters,

  SSP.58_SOC_SVR$Best_Hyperparameters,
  SSP.58_Clay_SVR$Best_Hyperparameters,
  SSP.58_pH_SVR$Best_Hyperparameters,

  MG.44_SOC_SVR$Best_Hyperparameters,
  MG.44_Clay_SVR$Best_Hyperparameters,
  MG.44_pH_SVR$Best_Hyperparameters,

  NRW.42_SOC_SVR$Best_Hyperparameters,
  NRW.42_Clay_SVR$Best_Hyperparameters,
  NRW.42_pH_SVR$Best_Hyperparameters,

  O.32_SOC_SVR$Best_Hyperparameters,
  O.32_Clay_SVR$Best_Hyperparameters,
  O.32_pH_SVR$Best_Hyperparameters
)


MLR_with_spec_bind_less_100 <- rbind(
  CV.98_SOC_MLR$Best_Hyperparameters,
  CV.98_Clay_MLR$Best_Hyperparameters,
  CV.98_pH_MLR$Best_Hyperparameters,

  SC.93_SOC_MLR$Best_Hyperparameters,
  SC.93_Clay_MLR$Best_Hyperparameters,
  SC.93_pH_MLR$Best_Hyperparameters,

  NRW.62_SOC_MLR$Best_Hyperparameters,
  NRW.62_Clay_MLR$Best_Hyperparameters,
  NRW.62_pH_MLR$Best_Hyperparameters,

  RP.62_SOC_MLR$Best_Hyperparameters,
  RP.62_Clay_MLR$Best_Hyperparameters,
  RP.62_pH_MLR$Best_Hyperparameters,

  SSP.58_SOC_MLR$Best_Hyperparameters,
  SSP.58_Clay_MLR$Best_Hyperparameters,
  SSP.58_pH_MLR$Best_Hyperparameters,

  MG.44_SOC_MLR$Best_Hyperparameters,
  MG.44_Clay_MLR$Best_Hyperparameters,
  MG.44_pH_MLR$Best_Hyperparameters,

  NRW.42_SOC_MLR$Best_Hyperparameters,
  NRW.42_Clay_MLR$Best_Hyperparameters,
  NRW.42_pH_MLR$Best_Hyperparameters,

  O.32_SOC_MLR$Best_Hyperparameters,
  O.32_Clay_MLR$Best_Hyperparameters,
  O.32_pH_MLR$Best_Hyperparameters
)

SVR_with_spec_bind_less_100_dimensionality_red <- SVR_with_spec_bind_less_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')


SVR_with_spec_bind_less_100_dimensionality_red$count <- (SVR_with_spec_bind_less_100_dimensionality_red$count/240) *100
SVR_with_spec_bind_less_100_dimensionality_red$Method <- "SVR"


MLR_with_spec_bind_less_100_dimensionality_red <- MLR_with_spec_bind_less_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

MLR_with_spec_bind_less_100_dimensionality_red <- rbind(
  MLR_with_spec_bind_less_100_dimensionality_red,
  data.frame(condition = "CMF (cutoff = 1.0)", count = 0)
)
MLR_with_spec_bind_less_100_dimensionality_red[c(2,3),] <- MLR_with_spec_bind_less_100_dimensionality_red[c(3,2),]


MLR_with_spec_bind_less_100_dimensionality_red$count <- (MLR_with_spec_bind_less_100_dimensionality_red$count/240) *100
MLR_with_spec_bind_less_100_dimensionality_red$Method <- "MLR"



RF_with_spec_bind_less_100_dimensionality_red <- RF_with_spec_bind_less_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

RF_with_spec_bind_less_100_dimensionality_red$count <- (RF_with_spec_bind_less_100_dimensionality_red$count/240) *100
RF_with_spec_bind_less_100_dimensionality_red$Method <- "RF"




CatBoost_with_spec_bind_less_100_dimensionality_red <- CatBoost_with_spec_bind_less_100 %>%
  mutate(condition = case_when(
    Dimensionality_reduction == "PCA" ~ "PCA",
    Dimensionality_reduction == "CMF" & CMF_cutoff == 1.0 ~ "CMF (cutoff = 1.0)",
    Dimensionality_reduction == "CMF" & CMF_cutoff != 1.0 ~ "CMF (cutoff != 1.0)",
    TRUE ~ NA_character_
  )) %>%
  filter(!is.na(condition)) %>%
  group_by(condition) %>%
  summarise(count = n(), .groups = 'drop')

CatBoost_with_spec_bind_less_100_dimensionality_red$count <- (CatBoost_with_spec_bind_less_100_dimensionality_red$count/240) *100
CatBoost_with_spec_bind_less_100_dimensionality_red$Method <- "CatBoost"

all_models_with_spec_bind_less_100_dimensionality_red <- rbind(
  SVR_with_spec_bind_less_100_dimensionality_red,
  MLR_with_spec_bind_less_100_dimensionality_red,
  RF_with_spec_bind_less_100_dimensionality_red,
  CatBoost_with_spec_bind_less_100_dimensionality_red
)

all_models_with_spec_bind_less_100_dimensionality_red$condition <- gsub("CMF \\(cutoff = 1.0\\)", "None", all_models_with_spec_bind_less_100_dimensionality_red$condition)
all_models_with_spec_bind_less_100_dimensionality_red$condition <- gsub("CMF \\(cutoff != 1.0\\)", "CMF", all_models_with_spec_bind_less_100_dimensionality_red$condition)





all_models_with_spec_bind_less_100_dimensionality_red$title <- "Datasets with less than 100 samples"

Less_100 <- ggplot(all_models_with_spec_bind_less_100_dimensionality_red, aes(x = condition, y = count, fill = Method  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Best Dimensionality Reduction",
       y = "Relative Frequency (in %)",
       fill = "Learning Algorithms:") +
  theme_bw()+
  theme(
    legend.title = element_text(size = 18),
    legend.text = element_text(size = 16),
    legend.spacing.y = unit(1, "cm"),
    legend.key.height = unit(1, "cm"),
    legend.key.width = unit(1, "cm"),
    legend.position = "bottom",
    legend.box.just = "right",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.text = element_text(size = 16,color = "black"),
    axis.text.y = element_blank(),
    axis.title.y = element_blank(),
    axis.title = element_text(size = 18),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  scale_y_continuous(expand = c(0, 0), limits = c(0, 100))+
  facet_grid(. ~ title)
Less_100


Fig_C1 <- egg::ggarrange(All,Less_100,More_100, ncol = 3, nrow = 1,labels=c("       (a)", "(b)", "(c)"),label.args=list(gp = grid::gpar(font = 2, cex =1.6)))
ggsave("Benchmarking_results_analysis//Fig_C1.tiff", plot = Fig_C1, dpi = 300, width = 15, height = 7.3, units = "in", device = "tiff")
