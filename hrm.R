install.packages("tidyverse")
install.packages("ggplot2")
library(tidyverse)
library(dplyr)
library(ggplot2)
 
data<- read.csv("/Users/priyalchotwani/Downloads/csvData.csv")
data1 = data
data1<- data1[!(data1$Year>"2021"),]

ggplot(data = data1, aes(x = Year, y = Population)) +
  geom_point() +
  stat_smooth(method = "lm", col = "dodgerblue3") +
  theme(panel.background = element_rect(fill = "white"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("Linear Model Fitted to Data")

fit_1 <- lm(Population ~ Year, data = data1)

predict(fit_1, data.frame(Year=2002))
predict(fit_1, data.frame(Year=2021))
predict(fit_1, data.frame(Year=2022))
predict(fit_1, data.frame(Year=2023))
predict(fit_1, data.frame(Year=2024))
predict(fit_1, data.frame(Year=2025))
predict(fit_1, data.frame(Year=2030))
