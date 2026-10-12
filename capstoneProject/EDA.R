## downloaded the data from https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/I3VHZK.
## have a quick ook at the data with the Positron viewer.

dtaDataFiles <- fs::dir_ls("capstoneProject/DeVries2024/data")

dataArtikel <- purrr::map(
  .x = dtaDataFiles,
  .f = haven::read_dta
) |>
  setNames(basename(dtaDataFiles))

dataArtikel[1] |> str()
tibble::as_tibble()
