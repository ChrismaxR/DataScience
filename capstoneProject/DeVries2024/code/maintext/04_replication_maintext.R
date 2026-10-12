################################################################################
# Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
# Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
# AJPS, 2024
# This code: Main Text 
################################################################################

# This code replicates all the empirical results (maps, tables and figures) of the paper's main text. 
# Appendix results are replicated in a separate file

library(haven)
library(ggplot2)
library(fabricatr)
library(cowplot)
library(scales)

################################################################################
# Figure 2
# Create event study plots based on Stata output
# Requires data output from 01_replication_maintext.do
################################################################################

transform_data <- function(df) {
  plot_df <- data.frame(
    wave = c(5, 4, 2, 1),
    election_year = c(2018, 2013, 2006, 2001),
    coef = df[6:9, 2],
    ci_lb = df[6:9, 3],
    ci_ub = df[6:9, 4]
  )
  plot_df[, 3:5] <- lapply(plot_df[, 3:5], as.numeric)
  plot_df <- rbind(plot_df, c(3, 2008, 0, NA, NA))
  colnames(plot_df) <- c("wave", "election_year", "coef", "ci_lb", "ci_ub")
  plot_df <- plot_df[order(plot_df$wave), ]
  return(plot_df)
}

# create_plot function remains unchanged
create_plot <- function(dplot, output_file){
  data_breaks <- data.frame(start = c(-Inf, 3), end = c(3, Inf), Period = factor(c("pre-reform", "post-reform"), levels = c("pre-reform", "post-reform")))
  
  y_limits <- c(-0.02, 0.0265)
  
  p <- ggplot() +
    theme_bw() +
    geom_rect(data = data_breaks, aes(xmin = start, xmax = end, ymin = -Inf, ymax = Inf, fill = Period), alpha = c(0.05, 0.15), show.legend = FALSE) +
    scale_fill_manual(values = c("pre-reform" = "white", "post-reform" = "grey20"), name = "") +
    geom_hline(yintercept = 0, color = "gray50", linetype = "dashed") +
    geom_point(data = dplot, aes(x = wave, y = coef), size = 3, shape = 21, color = "black", fill = ifelse(dplot$wave == 3, "white", "black"), stroke = 1) +
    scale_x_continuous(name = "Election year", breaks = dplot$wave, labels = dplot$election_year) +
    geom_errorbar(data = subset(dplot, wave != 3), aes(x = wave, ymin = ci_lb, ymax = ci_ub), width = 0, color = "black", size = 0.7) +
    ggtitle("") +
    scale_y_continuous("Average treatment effect on the treated", limits = y_limits) +  
    theme(text = element_text(size = 20, family = "sans"), 
          panel.grid.minor.x = element_blank(), 
          panel.grid.minor.y = element_blank(),
          panel.grid.major = element_blank(),
          axis.title.x = element_blank(), 
          axis.ticks.x = element_blank(),
          axis.title.y = element_text(size = 16, margin = margin(t = 0, r = 15, b = 0, l = 0)),
          axis.text.x = element_text(color="black"),
          axis.text.y = element_text(color="black"),
          axis.ticks = element_line(color = "black"),
          legend.position="none") 
  
  ggsave(output_file, plot = p, device = "pdf", width = 10, height = 5)
}

# Create a function to process and plot datasets
process_and_plot <- function(dataset_file, output_file) {
  data <- read_dta(dataset_file)
  dplot <- transform_data(data)
  create_plot(dplot, output_file)
}

# Process and plot each dataset
datasets <- c("ev_study_all_dta.dta", "ev_study_mg1_dta.dta", "ev_study_mg0_dta.dta")
output_files <- c("ev_study_all.pdf", "ev_study_mg1.pdf", "ev_study_mg0.pdf")

for (i in seq_along(datasets)) {
  process_and_plot(datasets[i], output_files[i])
}


################################################################################
# Figure 4: Income HTE
################################################################################
d <-read_dta("hte_income_coefs_dta.dta")

att_df <- data.frame(
  c(1, 2, 3),
  d[5:7, 2],
  d[5:7, 3],
  d[5:7, 4]
)
att_df[, 2:4] <- apply(att_df[, 2:4], 2, as.numeric)
colnames(att_df) <- c("income_tercile", "att", "ci_lb", "ci_ub")

hist_df <- read_dta("hte_income_hist.dta")

hist_df$income_tercile <- split_quantile(x = hist_df$mean_income2008, type = 3)
hist_df$income_tercile1 <- ifelse(hist_df$income_tercile == 1, 1, 0)
hist_df$income_tercile2 <- ifelse(hist_df$income_tercile == 2, 1, 0)
hist_df$income_tercile3 <- ifelse(hist_df$income_tercile == 3, 1, 0)
hist_df$terc1_att <- hist_df$income_tercile1 * hist_df$treated
hist_df$terc2_att <- hist_df$income_tercile2 * hist_df$treated
hist_df$terc3_att <- hist_df$income_tercile3 * hist_df$treated

df <- merge(att_df, hist_df)

terciles <- quantile(df$mean_income2008, probs = c(1/3, 2/3, 1))
positions <- c(terciles[1] / 2, (terciles[2] + terciles[1]) / 2, (ceiling(max(df$mean_income2008)) + terciles[2]) / 2)
plot_df <- data.frame(positions, att_df[,2:4])
colnames(plot_df) <- c("tercile", "att", "ci_lb", "ci_ub")

bin <- ggplot(aes(x = tercile, y = att), data = plot_df) +
  theme_bw() +
  geom_hline(yintercept = 0, color = "gray50") +
  geom_errorbar(aes(ymin = ci_lb, ymax = ci_ub), width = 0, color = "black", size = 0.8) +
  geom_point(size = 3.5, shape = 21, color = "black", fill = "black", stroke = 1) +
  scale_x_continuous(breaks = c(0, terciles[c(1, 2)], ceiling(max(df$mean_income2008)))) +
  scale_y_continuous("Conditional ATT") +
  theme(panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank(), 
        text=element_text(size=14), 
        axis.title.x = element_blank(), 
        axis.text.x = element_blank(), 
        axis.ticks.x = element_blank(), 
        axis.text.y = element_text(color="black"),
        axis.ticks.y = element_line(color = "black"),
        plot.margin = unit(c(0,0,0,0), "lines")) +
  coord_cartesian(xlim = c(0,ceiling(max(df$mean_income2008))))

# hist
hist <- ggplot(data = df, aes(x = mean_income2008, fill = as.factor(treated), color = as.factor(treated))) +
  geom_histogram(alpha=0.5, position = "stack", bins = 100, size=0.01) +
  theme_bw() +
  scale_x_continuous("Municipal mean income", breaks = c(0, terciles[c(1, 2)], ceiling(max(df$mean_income2008))), labels = c(0, "T1", "T2", ceiling(max(df$mean_income2008)))) +
  scale_y_continuous("Count", breaks = c(0, 300)) +
  theme(legend.title = element_blank()) +
  scale_fill_manual(values = c("darkgrey", "black"), labels = c("Control", "Treated")) +
  scale_color_manual(values = c("darkgrey", "black"), labels = c("Control", "Treated")) +
  theme(panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank(), 
        text = element_text(size=14), 
        legend.position = "bottom", 
        axis.text = element_text(color="black"),
        axis.ticks = element_line(color = "black"),
        legend.text = element_text(size=14)) +
  coord_cartesian(xlim = c(0,ceiling(max(df$mean_income2008))))

p <- plot_grid(bin, hist, axis = "b", align = "v", rel_heights = c(1, 0.7), nrow = 2)

p

ggsave("HTE_figure_maintext_AJPS.pdf", plot = p, device = "pdf", width = 10, height = 6)
