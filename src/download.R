#Download the data
spx <- read.csv("https://asda.stat.ubc.ca/workshops/data/sp500_yearend.csv")

write.csv(spx, "data/sp_500_yearend.csv")