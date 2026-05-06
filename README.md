# NBA Player Value Curve (Ages 25–30)

## Overview

This project analyzes how NBA superstars’ salary, efficiency, and performance change from ages **25 to 30**, a period widely considered the prime of an athlete’s career. Using tidyverse workflows and reproducible Quarto documents, we explore whether player pay actually matches on‑court production — and how injuries, contract timing, and role differences distort the relationship between salary and performance.

Our analysis focuses on five elite players:

- LeBron James  
- Stephen Curry  
- James Harden  
- Kevin Durant  
- Nikola Jokić  

To compare players with different roles, we compute a custom **Performance Score**:

**(PTS + REB + AST) × eFG%**

This blends volume and efficiency into a single metric that works across positions.

---

## Interesting Insight

One early insight from our analysis is that **salary does not always match single‑season performance**. Because contracts are negotiated years in advance and the salary cap rises over time, players often experience salary jumps that do not align with their performance curve. Injuries also create “fake dips” in performance that make a player appear worse even when their per‑game ability remains elite.

(We will add a visualization here once exported using `ggsave()`.)

---

## Data Sources and Acknowledgements

Our data comes from publicly available NBA statistics and salary databases:

- **ESPN** — per‑game statistics  
- **Basketball Reference** — advanced metrics and game logs  
- **Spotrac** — salary and contract information  

We acknowledge the creators and maintainers of these resources, as well as the authors of the tidyverse ecosystem, which we use extensively for data wrangling, visualization, and reproducibility.

---

## Current Plan

Our project follows the **Plan–Code–Improve–Polish (PCIP)** system emphasized in Stat 184.

- **Plan:** Identify our research question, define our performance metric, and outline our wrangling and visualization steps.  
- **Code:** Import, clean, and wrangle the data; compute performance scores; create visualizations using the Grammar of Graphics.  
- **Improve:** Debug code, refine visualizations using EPTs, and adjust for injury‑distorted seasons.  
- **Polish:** Add alt text, improve readability, finalize narrative text, and ensure full reproducibility through Quarto and GitHub.

A more detailed plan is included in our Quarto document.

---

## Repo Structure

## Authors

- **Ryan Broadhurst**  
- **Vishnu Praveen**  
- **James Leveque**

For questions, please contact any team member through the Stat 184 course communication channels.

