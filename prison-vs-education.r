library(ggplot2)
library(plotly)
library(htmlwidgets)

data <- read.csv("data.csv", stringsAsFactors=F)

data$ratio <- data$per.prisoner.cost/data$per.pupil.spending

p <- plot_ly(data,
        x = per.prisoner.cost, 
        y = per.pupil.spending, 
        text = state,
        mode = "markers", 
        color = ratio) %>%
        layout(
          xaxis = list(range = c(0, 60000)),
          yaxis = list(range = c(0, 20000)))

saveWidget(as.widget(p), "graph.html")
