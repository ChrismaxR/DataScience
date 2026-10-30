## downloaded the data from https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/I3VHZK.
## have a quick ook at the data with the Positron viewer.
library(tidyverse)

dtaDataFiles <- fs::dir_ls("capstoneProject/DeVries2024/data")

reader <- function(x) {
  haven::read_dta(x) |>
    tibble::as_tibble() |>
    janitor::clean_names(case = "small_camel")
}

dataArtikel <- purrr::map(
  .x = dtaDataFiles,
  .f = reader
) |>
  setNames(basename(dtaDataFiles))


# What I’d like to see here is are two scatterplots.
#
# First, a scatterplot with the outcome (vote share for far-right parties during the years shortly after the 2010 reform) on the y-axis, the “before” measurement (vote share for far-right parties during the years shortly before the reform), red dots for the “treated” municipalities, and blue dots for the “controls.”

dataArtikel[["electoral_panel_dataset.dta"]] |>
  #filter(municipality %in% c("FROSINONE", "FIRENZE" )) |>
  filter(year %in% c(2008, 2013)) |>
  transmute(
    year,
    municipality,
    north,
    treated = if_else(treated == 1, "Treated", "Controls"),
    farrightSh
  ) |>
  pivot_wider(
    names_from = c(year),
    values_from = farrightSh
  ) |>
  ggplot(aes(x = `2008`, y = `2013`, colour = treated)) +
  geom_point(alpha = .6) +
  facet_wrap(~north) +
  scale_y_continuous(labels = scales::percent_format()) +
  scale_x_continuous(labels = scales::percent_format()) +
  labs(
    title = "",
    x = "Election 2008",
    y = "Election 2013"
  )

# The other scatterplot would be the same thing but with log(population) on the x-axis so you could see if anything is happening at the discontinuity.

dataArtikel[["electoral_panel_dataset.dta"]] |>
  #filter(municipality %in% c("FROSINONE", "FIRENZE")) |>
  filter(year %in% c(2008)) |>
  transmute(
    year,
    municipality,
    treated = if_else(treated == 1, T, F),
    popTot2008,
    farrightSh
  ) |>
  ggplot(aes(x = popTot2008, y = farrightSh, colour = treated)) +
  geom_point(alpha = .4) +
  scale_y_continuous(labels = scales::percent_format()) +
  scale_x_log10(labels = scales::number_format())
