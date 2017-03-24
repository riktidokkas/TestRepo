## read in data
spx.close <- read.csv("results/sp_500_returns.csv")


##plot the data
library(ggplot2)

ggplot(spx.close, aes(x = Year, y = Close)) +
  geom_point(aes(color = "blue"))

ggsave("plots/sp_500_Close.png")