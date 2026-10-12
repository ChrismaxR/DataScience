library(ggplot2)
library(DBI)

hospitalDb <- "/Users/home/Documents/Entrador/Intakes/DataBA/dashboard/sources/hospital/hospital.duckdb"
con <- dbConnect(
  drv = duckdb::duckdb(),
  hospitalDb
)

behandeltijd <- dbReadTable(con, "behandeltijd")

View(behandeltijd)
l
