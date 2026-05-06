library(tidyverse)

jokic  <- read_csv("jokic.csv")
lebron <- read_csv("Lebron.csv")
curry  <- read_csv("Curry.csv")
harden <- read_csv("Harden.csv")

# Fix Durant's pts column
durant <- read_csv("Durant.csv")
durant <- mutate(durant,
                 pts = na_if(pts, "Did not play - injury"),
                 pts = as.numeric(pts))

# Combine all players into one dataset
nba_data <- bind_rows(jokic, lebron, curry, harden, durant)

salaries <- read_csv("salaries.csv")

# Create the FINAL table with stats + salaries
nba_final <- left_join(nba_data, salaries, by = c("player", "season", "age"))

write_csv(nba_final, "nba_data_FINAL.csv")
