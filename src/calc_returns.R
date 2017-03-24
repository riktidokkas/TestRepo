##read in the data
spx <- read.csv("data/sp_500_yearend.csv")

##calculate yearly returns
library(dplyr)

spx <- mutate(
  spx,
  Return = c(NA, diff(Close)) / lag(Close)
)

write.csv(spx, "results/sp_500_returns.csv")

