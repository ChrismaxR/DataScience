################################################################################
# Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
# Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
# AJPS, 2024
# This code: Text Analysis using MPD (Manifesto Project Database) data 
################################################################################

# This code replicates all the text analysis results of the paper's main text (Figure 3). 
# Other Main and Appendix results are replicated in separate files

library(tidyverse)
library(quanteda)
library(manifestoR)
library(ggplot2)
library(igraph)
library(ggraph)
library(lubridate)
library(RColorBrewer)
library(stm)
library(RSQLite)

################################################################################
rm(list=ls())

mp_setapikey("manifesto_apikey.txt")

mpd_corpus <- mp_corpus(countryname == "Italy" & edate > as.Date("2000-01-01"))

summary(mpd_corpus)

#Building the corpus
quanteda_corpus <- mpd_corpus %>%
  recode_v5_to_v4() %>%
  as.data.frame(with.meta = TRUE) %>%
  corpus(docid_field = "manifesto_id", unique_docnames = FALSE)
quanteda_corpus

#Building the dfm
mpd_dfm <- quanteda_corpus %>%
  tokens(remove_punct = TRUE, remove_numbers = TRUE) %>%
  tokens_tolower() %>%
  tokens_remove(stopwords("italian")) %>%
  tokens_wordstem() %>%
  dfm()

#Getting the current docvars
docvars <- docvars(mpd_dfm)

#Creating a new column in the docvars that concatenates party and date
docvars$doc_id <- paste0(docvars$party, "_", docvars$date)

#Updating the dfm with the modified docvars
docvars(mpd_dfm) <- docvars

#Grouping the dfm
dfm_grouped <- dfm_group(mpd_dfm, groups = doc_id)

mpd_dfm_grouped <- dfm(dfm_grouped)

#Getting the most frequent words in the corpus
top_words <- topfeatures(mpd_dfm, n = 20)

################################################################################
#Dictionary Analysis
#Defining the dictionary list
dizionario_list <- list("immigration" = c("immigrati", "immigrazione", "migranti", "migrazione", "stranieri", "extracomunitari", "accoglienza", "asilo", "richiedenti asilo", "rifugiati", "clandestini", "illegali", "sbarchi", "invasione", "frontiere", "visto", "permesso di soggiorno"),
                        "services" = c("servizi", "servizi pubblici", "servizi sociali", "assistenza sociale", "sanità", "sanità pubblica", "scuola", "scuola pubblica", "trasporti pubblici", "lavoro pubblico", "sussidi", "sostegno al reddito", "welfare"))

#Loading the "dizionario" dictionary
my_dict <- dictionary(dizionario_list)

#Applying the dictionary to the dfm
my_result <- dfm_lookup(mpd_dfm, dictionary = my_dict)

mpd_n_words <- ntoken(quanteda_corpus)

mpd_dfm_dictionary_proportions <- my_result/mpd_n_words

#Same thing with the grouped dfm
#Applying the dictionary to the dfm
my_result_grouped <- dfm_lookup(mpd_dfm_grouped, dictionary = my_dict)

my_result_grouped_prop <- dfm_weight(my_result_grouped, scheme = "prop")

#Plotting for immigration words
immigration_prop <- my_result_grouped_prop[, "immigration"]

immigration_prop <- as.numeric(immigration_prop)

#Plotting for service words
services_prop <- my_result_grouped_prop[, "services"]

services_prop <- as.numeric(services_prop)

#Showing the plots for each party and year
#Subsetting the dfm to only include the selected parties
selected_parties <- c(32720, 32440, 32061, 32902, 32956, 32610, 32630)
party_filter <- docvars(my_result_grouped_prop)$party %in% selected_parties

#Extracting the docvars from the dfm
my_docvars <- docvars(my_result_grouped_prop)

#Subsetting the docvars to only include the selected parties
my_docvars_subset <- my_docvars[my_docvars$party %in% selected_parties,]

#Subsetting the dfm using the updated docvars
my_result_subset <- my_result_grouped_prop[my_docvars_subset$doc_id, ]

#Calculating the sum of counts for each document
doc_sums <- colSums(my_result_subset)

#Dividing each count by the sum of counts for the corresponding document
my_result_subset_prop <- my_result_subset / doc_sums

#Updating the docvars in the dfm
docvars(my_result_subset_prop) <- my_docvars_subset

#Transforming my_result_subset_prop into a dataframe
my_result_df <- convert(my_result_subset_prop, to = "data.frame")

#Adding party and date columns to the dataframe
my_result_df$party <- docvars(my_result_subset_prop)$party
my_result_df$date <- docvars(my_result_subset_prop)$date

#Converting party codes into party names
my_result_df$partyname <- ifelse(my_result_df$party == 32720, "Lega",
                                 ifelse(my_result_df$party == 32440, "PD",
                                        ifelse(my_result_df$party == 32061, "FI",
                                               ifelse(my_result_df$party == 32610, "FI",
                                                      ifelse(my_result_df$party == 32956, "M5S",
                                                             ifelse(my_result_df$party == 32630, "FdI",
                                                                    ifelse(my_result_df$party == 32902, "IdV", NA)))))))


# Create a party family variable based on party codes
my_result_df$partyfamily <- ifelse(my_result_df$party %in% c("32440", "32956", "32902"),
                                   "left",
                                   ifelse(my_result_df$party %in% c("32720","32630"),
                                          "right",
                                          NA))

#Extracting the election year
my_result_df$year <- substr(my_result_df$date, 1, 4)

# Subset the dataframe for the specific dictionary items (e.g., immigration and services)
subset_df <- my_result_df[, c("immigration", "services", "partyname", "year")]

# Convert the dataframe to long format
subset_df_long <- tidyr::pivot_longer(subset_df, cols = c("immigration", "services"), names_to = "item", values_to = "count")

# Group the dataframe by partyname, year, and item
grouped_df <- subset_df_long %>%
  group_by(partyname, year, item)

# Find the most frequent words within each group
top_words <- grouped_df %>%
  top_n(10) %>%
  ungroup()

# Create a color palette
colors <- c("immigration" = "lightgrey", "services" = "black")

#Services
sum_by_family_year_services <- aggregate(services ~ partyfamily + year, data = my_result_df, sum)

# Plot the values
ggplot(sum_by_family_year_services, aes(x = year, y = `services`, fill = partyfamily)) +
  geom_bar(stat = "identity", position = "dodge", color = "black", alpha = 0.7, size = 0.25) +
  labs(x = "", y = "", fill = "") +
  scale_fill_manual(values = c("lightgrey", "black"), labels = c("Pro-redistribution", "Far-right")) +
  theme_minimal(base_size = 15) +
  geom_rect(xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf, color = "black", fill = NA, size = 0.01) +
  theme(
    text = element_text(size = 14, family = "sans"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.box = "horizontal",
    legend.text = element_text(color = "black"),
    axis.text.x = element_text(color = "black"),
    axis.text.y = element_text(color = "black"),
    axis.title.y = element_text(margin = margin(t = 0, r = 15, b = 0, l = 0))
  )

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

