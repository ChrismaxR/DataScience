################################################################################
# Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
# Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
# AJPS, 2024
# This code: Main Text 
################################################################################

# This code installs all necessary packages and defines necessary functions for the empirical analysis. 
# Main text and appendix results are replicated in the following files.

################################################################################
# Installing packages
install.packages("haven")
install.packages("ggplot2")
install.packages("fabricatr")
install.packages("cowplot")
install.packages("scales")
install.packages("tidyverse")
install.packages("quanteda")
install.packages("manifestoR")
install.packages("igraph")
install.packages("ggraph")
install.packages("lubridate")
install.packages("RColorBrewer")
install.packages("stm")
install.packages("RSQLite")

################################################################################
# Defining functions
# 01_replication_maintext

# The `transform_data` function extracts specific rows and columns from the input data frame, 
# converts certain columns to numeric, appends an additional row, orders the data by a specified column, 
# and returns the resulting data frame.

# The `create_plot` function generates a plot from the given data, highlighting 
# different periods with shaded areas, plotting points with error bars, and customizing 
# the appearance. It then saves the plot as a PDF file.

# The `process_and_plot` function reads data from a file, transforms the data for plotting, 
# generates a plot, and saves it.
