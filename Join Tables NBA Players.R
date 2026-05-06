library(tidyverse)


jokic  <- read_csv("jokic.csv")
lebron <- read_csv("Lebron.csv")
curry  <- read_csv("Curry.csv")
harden <- read_csv("Harden.csv")

# Fix Durant's pts column using mutate 
durant <- read_csv("Durant.csv") |>
  mutate(
    pts = na_if(pts, "Did not play - injury"),
    pts = as.numeric(pts)
  )

# Combine all players
nba_data <- bind_rows(jokic, lebron, curry, harden, durant)


write_csv(nba_data, "nba_data_QMD_Final.csv")
