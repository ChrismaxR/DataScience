################################################################################
# Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
# Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
# AJPS, 2024
# This code: Appendix 
################################################################################

# This code replicates all the empirical results (figures) of the paper's appendix. 
# Main text results are replicated in a separate file

library(haven)
library(ggplot2)
library(fabricatr)
library(cowplot)
library(scales)

################################################################################
# Figure J1
# Create HTE on Economic Resources (MTWFE) based on Stata output
# Requires data output from 02_replication_appendix.do
################################################################################

d <-read_dta("hte_income_coefs_matched_v2_dta.dta")

att_df <- data.frame(
  c(1, 2, 3),
  d[5:7, 2],
  d[5:7, 3],
  d[5:7, 4]
)
att_df[, 2:4] <- apply(att_df[, 2:4], 2, as.numeric)
colnames(att_df) <- c("income_tercile", "att", "ci_lb", "ci_ub")

hist_df <- read_dta("hte_income_hist_matched_v2.dta")

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
  theme(panel.grid.minor = element_blank(), panel.grid.major = element_blank(), text=element_text(size=20), axis.title.x = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(), plot.margin = unit(c(0,0,0,0), "lines")) +
  coord_cartesian(xlim = c(0,ceiling(max(df$mean_income2008))))

# hist
hist <- ggplot(data = df, aes(x = mean_income2008, fill = as.factor(treated), color = as.factor(treated))) +
  geom_histogram(alpha=0.5, position = "stack", bins = 100, size=0.01) +
  theme_bw() +
  scale_x_continuous("Municipal mean income", breaks = c(0, terciles[c(1, 2)], ceiling(max(df$mean_income2008))), labels = c(0, "T1", "T2", ceiling(max(df$mean_income2008)))) +
  scale_y_continuous("Count", breaks = c(0, 100, 200)) +
  theme(legend.title = element_blank()) +
  scale_fill_manual(values = c("darkgrey", "black"), labels = c("Control", "Treated")) +
  scale_color_manual(values = c("darkgrey", "black"), labels = c("Control", "Treated")) +
  theme(panel.grid.minor = element_blank(), panel.grid.major = element_blank(), text = element_text(size=20), legend.position = "bottom", legend.text = element_text(size=20)) +
  coord_cartesian(xlim = c(0,ceiling(max(df$mean_income2008))))

plot_grid(bin, hist, axis = "b", align = "v", rel_heights = c(1, 0.7), nrow = 2)
