spx.return <- read.csv("results/sp_500_returns.csv")

#plot yearly returns
library(ggplot2)
ggplot(spx.return, aes(x = Year, y = Return)) +
  geom_point(aes(color = "red"))

ggsave("plots/sp_500_returns.png")