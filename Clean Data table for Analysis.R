nba <- read_csv("nba_data_FINAL.csv")

# Filter to ages 25–30
nba_filtered <- filter(nba, age >= 25, age <= 30)

# Create performance score
nba_filtered <- mutate(nba_filtered,
                       performance_score = (pts + trb + ast) * efg_pct)

# Select all variables needed for analysis
nba_small <- select(nba_filtered,
                    player, season, age, salary,
                    pts, trb, ast, efg_pct,
                    performance_score)

write_csv(nba_small, "nba_clean_data.csv")
