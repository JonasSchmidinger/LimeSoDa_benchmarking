library(rstatix)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(egg)

Results_bind <-readRDS("Benchmarking_results_analysis/Results_bind.rds")



######### Create Fig. 1#########

#Fig. 1a
Results_bind$title <- "All Datasets"
violin_all <- ggplot(Results_bind, aes(x = learning_algorithm, y = R2, fill = learning_algorithm)) +
  geom_hline(yintercept = 0, color = "darkgrey", linetype = "solid") + # Add a black horizontal line
  geom_violin(trim = TRUE, alpha = 0.6,width = 0.8,position = position_dodge(width = 1)) + # Create the violin plots with some transparency
  geom_jitter(width = 0.1, size = 2, color = "gray14", alpha = 0.7) + # Add jittered points
  stat_summary(fun = "mean",
               geom = "crossbar",
               width = 0.85,
               colour = "gray14")+
  stat_summary(fun = "mean",
               geom = "text",
               size= 4,
               aes(label = round(..y.., 2)),
               vjust = 1.15,
               hjust = -1.38,
               fontface = "bold",
               color = "black") +
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Learning Algorithm",
       y = expression(R^2)) + # Use expression for R squared
  theme_bw()+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        strip.text = element_text(size = 16,color = "black"),
        axis.title = element_text(size = 18,color = "black"),
        axis.text = element_text(size = 16,color = "black"),
        axis.title.x = element_blank(),
        axis.line = element_line(color = "black"),
        axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
        axis.ticks.y = element_line(color = "black"),
        plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  theme(legend.position = "none")+ # Hide legend if not needed
  scale_y_continuous(limits = c(-0.6, 1),breaks = c(-0.5,-0.25,0,0.25,0.5,0.75,1))+
  scale_x_discrete(expand = expansion(add = 0.75))+
  facet_grid(. ~ title)
violin_all

#Fig. 1b

Results_bind_without_spec <- Results_bind %>%
  filter(!str_detect(Sensors, "NIR|MIR"))

Results_bind_without_spec$title <- "Datasets without vis-NIR, NIR or MIR"
violin_without <- ggplot(Results_bind_without_spec, aes(x = learning_algorithm, y = R2, fill = learning_algorithm)) +
  geom_hline(yintercept = 0, color = "darkgrey", linetype = "solid") + # Add a black horizontal line
  geom_violin(trim = TRUE, alpha = 0.6,width = 0.8,position = position_dodge(width = 1)) + # Create the violin plots with some transparency
  geom_jitter(width = 0.1, size = 2, color = "gray14", alpha = 0.7) + # Add jittered points
  stat_summary(fun = "mean",
               geom = "crossbar",
               width = 0.85,
               colour = "gray14")+
  stat_summary(fun = "mean",
               geom = "text",
               size= 4,
               fontface = "bold",
               aes(label = round(..y.., 2)),
               vjust = 1.15,
               hjust = -1.42,
               color = "black") +
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Learning Algorithms",
       y = expression(R^2)) + # Use expression for R squared
  theme_bw()+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        strip.text = element_text(size = 16,color = "black"),
        axis.title = element_text(size = 18,color = "black"),
        axis.text = element_text(size = 16,color = "black"),
        axis.text.y = element_blank(),
        axis.title.y = element_blank(),
        axis.line = element_line(color = "black"),
        axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
        axis.ticks.y = element_line(color = "black"),
        plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  theme(legend.position = "none")+ # Hide legend if not needed
  scale_y_continuous(limits = c(-0.6, 1),breaks = c(-0.5,-0.25,0,0.25,0.5,0.75,1))+
  scale_x_discrete(expand = expansion(add = 0.75))+
  facet_grid(. ~ title)
violin_without

# Fig. 1c

Results_bind_with_spec <- Results_bind %>%
  filter(str_detect(Sensors, "NIR|MIR"))

Results_bind_with_spec$title <- "Datasets with vis-NIR, NIR or MIR"
violin_with <- ggplot(Results_bind_with_spec, aes(x = learning_algorithm, y = R2, fill = learning_algorithm)) +
  geom_hline(yintercept = 0, color = "darkgrey", linetype = "solid") + # Add a black horizontal line
  geom_violin(trim = TRUE, alpha = 0.6,width = 0.8,position = position_dodge(width = 1)) + # Create the violin plots with some transparency
  geom_jitter(width = 0.1, size = 2, color = "gray14", alpha = 0.7) + # Add jittered points
  stat_summary(fun = "mean",
               geom = "crossbar",
               width = 0.85,
               colour = "gray14")+
  stat_summary(fun = "mean",
               geom = "text",
               fontface = "bold",
               aes(label = round(..y.., 2)),
               size= 4,
               vjust = 1.15,
               hjust = -1.35,
               color = "black") +
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Learning Algorithm",
       y = expression(R^2)) + # Use expression for R squared
  theme_bw()+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        strip.text = element_text(size = 16,color = "black"),
        axis.text = element_text(size = 16,color = "black"),
        axis.text.y = element_blank(),
        axis.title = element_blank(),
        axis.line = element_line(color = "black"),
        axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
        axis.ticks.y = element_line(color = "black"),
        plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  theme(legend.position = "none")+ # Hide legend if not needed
  scale_y_continuous(limits = c(-0.6, 1),breaks = c(-0.5,-0.25,0,0.25,0.5,0.75,1))+
  scale_x_discrete(expand = expansion(add = 0.75))+
  facet_grid(. ~ title)
violin_with

Fig_1 <- egg::ggarrange(violin_all, violin_without, violin_with, ncol = 3, nrow = 1,labels=c("            (a)", "(b)", "(c)"), label.args=list(gp = grid::gpar(font = 2, cex =1.6)))
Fig_1
ggsave("Benchmarking_results_analysis//Fig_1.tiff", plot = Fig_1, dpi = 300, width = 15, height = 7.5, units = "in", device = "tiff")














######### Create Fig. 2#########
# Fig. 2a
rank_results <- Results_bind %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()

summary_ranks <- rank_results %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')

percentages <- summary_ranks %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank <- rank_results %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

percentages$title <- "All Datasets"

All_Datasets <-ggplot(percentages, aes(x = factor(rank), y = percentage, fill = learning_algorithm  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Ordinal Rank Based on Lowest RMSE",
       y = "Relative Frequency (in %)",
       fill = "Learning Algorithms:") +
  theme_bw()+
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.title = element_text(size = 18),
    axis.text = element_text(size = 16),
    axis.title.x= element_blank(),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  annotate("text",x="1", y = 61.5,  size = 5,label = " Mean Rank (α = 0.1)",hjust = 0,fontface =2) +
  annotate("text",x="1", y = 53,  size = 5,label = paste(" CatBoost =", as.character(round(mean_rank[mean_rank$learning_algorithm == "CatBoost",][2],2)),"a",
                                                         "\n RF = ", as.character(round(mean_rank[mean_rank$learning_algorithm == "RF",][2],2)),"a",
                                                         "\n MLR = ", as.character(round(mean_rank[mean_rank$learning_algorithm == "MLR",][2],2)),"a",
                                                         "\n SVR = ", as.character(round(mean_rank[mean_rank$learning_algorithm == "SVR",][2],2)),"a"),hjust = 0) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 65))+
  facet_grid(. ~ title)
All_Datasets

dunn_test(rank_results, rank ~ learning_algorithm,p.adjust.method =  "none")


# Fig. 2b
Results_bind_without_spec <- Results_bind %>%
  filter(!str_detect(Sensors, "NIR|MIR"))

rank_results_without_spec <- Results_bind_without_spec %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()

summary_ranks_without_spec <- rank_results_without_spec %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')

percentages_without_spec <- summary_ranks_without_spec %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank_without_spec <- rank_results_without_spec %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

percentages_without_spec$title <- "Datasets without vis-NIR, NIR or MIR"

without_Spec_Datasets<- ggplot(percentages_without_spec, aes(x = factor(rank), y = percentage, fill = learning_algorithm  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Ordinal Rank Based on Lowest RMSE",
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
    axis.text.y = element_blank(),
    axis.text = element_text(size = 16),
    axis.title = element_text(size = 18),
    axis.title.y = element_blank(),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  annotate("text",x="1", y = 61.5,  size = 5,label = " Mean Rank (α = 0.1)",hjust = 0,fontface =2) +
  annotate("text",x="1", y = 53,  size = 5,label = paste(" CatBoost =", as.character(round(mean_rank_without_spec[mean_rank_without_spec$learning_algorithm == "CatBoost",][2],2)), "a",
                                                         "\n RF = ", as.character(round(mean_rank_without_spec[mean_rank_without_spec$learning_algorithm == "RF",][2],2)), "a",
                                                         "\n MLR = ", as.character(round(mean_rank_without_spec[mean_rank_without_spec$learning_algorithm == "MLR",][2],2)), "b",
                                                         "\n SVR = ", as.character(round(mean_rank_without_spec[mean_rank_without_spec$learning_algorithm == "SVR",][2],2)), "b"),hjust = 0) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 65))+
  facet_grid(. ~ title)
without_Spec_Datasets


dunn_test(rank_results_without_spec, rank ~ learning_algorithm,p.adjust.method = "none")

# Fig. 2c
Results_bind_with_spec <- Results_bind %>%
  filter(str_detect(Sensors, "NIR|MIR"))

rank_results_with_spec <- Results_bind_with_spec %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()


summary_ranks_with_spec <- rank_results_with_spec %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')


percentages_with_spec <- summary_ranks_with_spec %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()



mean_rank_with_spec <- rank_results_with_spec %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

percentages_with_spec$title <- "Datasets with vis-NIR, NIR or MIR"
Spec_Datasets<- ggplot(percentages_with_spec, aes(x = factor(rank), y = percentage, fill = learning_algorithm  )) +
  geom_bar(stat = "identity", position = "dodge",color = "black")+
  scale_fill_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  labs(x = "Ordinal Rank Based on Lowest RMSE",
       y = "Relative Frequency (in %)",
       fill = "Learning Algorithms:") +
  theme_bw()+
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.text = element_text(size = 16),
    axis.text.y = element_blank(),
    axis.title = element_blank(),
    strip.text = element_text(size = 16),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),
    axis.ticks.y = element_line(color = "black"),
    plot.margin = margin(t = 20, r = 5, b = 5, l = 5))+
  annotate("text",x="1", y = 61.5,  size = 5,label = " Mean Rank (α = 0.1)",hjust = 0,fontface =2) +
  annotate("text",x="1", y = 53,  size = 5,label = paste(" CatBoost =", as.character(round(mean_rank_with_spec[mean_rank_with_spec$learning_algorithm == "CatBoost",][2],2)),"b",
                                                         "\n RF = ", as.character(round(mean_rank_with_spec[mean_rank_with_spec$learning_algorithm == "RF",][2],2)),"c",
                                                         "\n MLR = ", as.character(round(mean_rank_with_spec[mean_rank_with_spec$learning_algorithm == "MLR",][2],2)),"a",
                                                         "\n SVR = ", as.character(round(mean_rank_with_spec[mean_rank_with_spec$learning_algorithm == "SVR",][2],2)),"a"),hjust = 0) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 65))+
  facet_grid(. ~ title)
Spec_Datasets

dunn_test(rank_results_with_spec, rank ~ learning_algorithm,p.adjust.method = "none")

# Combine all three plots
Fig_2 <- egg::ggarrange(All_Datasets,without_Spec_Datasets,Spec_Datasets, ncol = 3, nrow = 1,labels=c("       (a)", "(b)", "(c)"),label.args=list(gp = grid::gpar(font = 2, cex =1.6)))
Fig_2
ggsave("Benchmarking_results_analysis/Fig_2.tiff", plot = Fig_2, dpi = 300, width = 15, height = 7.3, units = "in", device = "tiff")








######### Create Fig. 3#########
# Prepare data
Results_bind_without_spec <- Results_bind %>%
  filter(!str_detect(Sensors, "NIR|MIR"))

Results_bind_without_spec_more_100<- Results_bind_without_spec %>%
  filter(Number_of_samples > 100)

rank_results_without_spec_more_100 <- Results_bind_without_spec_more_100 %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()


summary_ranks_without_spec_more_100 <- rank_results_without_spec_more_100 %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')


percentages_without_spec_more_100 <- summary_ranks_without_spec_more_100 %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank_without_spec_more_100 <- rank_results_without_spec_more_100 %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

####
Results_bind_without_spec <- Results_bind %>%
  filter(!str_detect(Sensors, "NIR|MIR"))


Results_bind_without_spec_less_100<- Results_bind_without_spec %>%
  filter(Number_of_samples < 100)

rank_results_without_spec_less_100 <- Results_bind_without_spec_less_100 %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()

summary_ranks_without_spec_less_100 <- rank_results_without_spec_less_100 %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')

percentages_without_spec_less_100 <- summary_ranks_without_spec_less_100 %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank_without_spec_less_100 <- rank_results_without_spec_less_100 %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

###
Results_bind_with_spec <- Results_bind %>%
  filter(str_detect(Sensors, "NIR|MIR"))

Results_bind_with_spec_more_100<- Results_bind_with_spec %>%
  filter(Number_of_samples > 100)

rank_results_with_spec_more_100 <- Results_bind_with_spec_more_100 %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()

summary_ranks_with_spec_more_100 <- rank_results_with_spec_more_100 %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')

percentages_with_spec_more_100 <- summary_ranks_with_spec_more_100 %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank_with_spec_more_100 <- rank_results_with_spec_more_100 %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

###
Results_bind_with_spec <- Results_bind %>%
  filter(str_detect(Sensors, "NIR|MIR"))

Results_bind_with_spec_less_100<- Results_bind_with_spec %>%
  filter(Number_of_samples < 100)

rank_results_with_spec_less_100 <- Results_bind_with_spec_less_100 %>%
  group_by(Dataset, Property) %>%
  arrange(desc(RMSE), .by_group = TRUE) %>%
  mutate(rank = rank(RMSE, ties.method = "min")) %>%
  ungroup()

summary_ranks_with_spec_less_100 <- rank_results_with_spec_less_100 %>%
  group_by(rank, learning_algorithm) %>%
  summarise(count = n(), .groups = 'drop')

percentages_with_spec_less_100 <- summary_ranks_with_spec_less_100 %>%
  group_by(rank) %>%
  mutate(percentage = count / sum(count) * 100) %>%
  ungroup()

mean_rank_with_spec_less_100 <- rank_results_with_spec_less_100 %>%
  group_by(learning_algorithm) %>%
  summarise(mean_rank = mean(rank), .groups = 'drop')

# Create plot
mean_rank_with_spec_more_100$Sample_size <- ">100"
mean_rank_with_spec_less_100$Sample_size <- "<100"

mean_rank_without_spec_more_100$Sample_size <- ">100"
mean_rank_without_spec_less_100$Sample_size <- "<100"

mean_rank_with_spec_more_100$Spec <- "Datasets with vis-NIR, NIR or MIR"
mean_rank_with_spec_less_100$Spec <- "Datasets with vis-NIR, NIR or MIR"

mean_rank_without_spec_more_100$Spec <- "Datasets without vis-NIR, NIR or MIR"
mean_rank_without_spec_less_100$Spec <- "Datasets without vis-NIR, NIR or MIR"

line_plot_df<- rbind(mean_rank_with_spec_more_100, mean_rank_with_spec_less_100, mean_rank_without_spec_more_100, mean_rank_without_spec_less_100)

Fig_3 <- ggplot(line_plot_df, aes(x = Sample_size, y = mean_rank, group = interaction(learning_algorithm, Spec), color = learning_algorithm, linetype = Spec)) +
  geom_point(size = 3.3) +                             # Add points for the mean rank
  geom_line(linewidth=1.5) +                                     # Connect points with lines
  scale_color_manual(values=c("CatBoost"= "gold","RF" = "#999900","MLR"= "#CC3399","SVR"= "cadetblue3")) +  # Change colors manually
  scale_linetype_manual(values = c("Datasets with vis-NIR, NIR or MIR" = "dotted", "Datasets without vis-NIR, NIR or MIR" = "solid")) + # Customize line types
  labs(title = "Mean Rank by Sample Size and Model",
       linetype = "Features",
       color = "Learning Algorithms",
       x = "Sample Size",
       y = "Mean Ordinal Rank Based on Lowest RMSE") +
  theme_bw()+
  theme(
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 14),
    legend.key.height = unit(1, "cm"),
    legend.key.width = unit(1.2, "cm"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    axis.text = element_text(size = 16,color = "black"),
    axis.title = element_text(size = 18,color = "black"),
    plot.title = element_blank(),
    axis.line = element_line(color = "black"),
    axis.ticks.x = element_line(color = "black"),  # Add x-axis ticks
    axis.ticks.y = element_line(color = "black"))+
  scale_x_discrete(expand = expansion(add = 0.2))+
  scale_y_reverse(limits = c(4, 1))

ggsave("Benchmarking_results_analysis/Fig_3.tiff", plot = Fig_3, dpi = 300, width = 15, height = 7.5, units = "in", device = "tiff")





