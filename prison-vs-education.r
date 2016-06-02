library(ggplot2)

data <- read.csv("data.csv")

ggplot(data, aes(x=per.prisoner.cost, y=per.pupil.spending)) +
  geom_point() +
  geom_abline() + 
  xlim(0,60000) + ylim(0,20000) + 
  stat_smooth(method="lm") +
  theme_minimal()