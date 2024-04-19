library(ggplot2)
library(ggridges)

getwd()
setwd("/Users/maxtico/Documents/Master_UOC/Data visualization/PAC2/")

data = read.csv("Dataset_temp_seattle.csv", sep=";")

order <- c("gener","febrer","març","abril","maig","juny","juliol","agost","setembre","octubre","novembre","desembre")
# plot
ggplot(data, aes(x = Mean_TemperatureC, y = factor(month,levels=order), fill = mean_month,group = month)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01) +
  scale_fill_gradient(low = "blue", high = "red", name = "Temperatura (°C)")+ 
  theme_ridges() + 
  theme(plot.title = element_text(hjust = 0.5, face = "bold"),
        axis.title.x = element_text(hjust = 0.5),  # Center the x-axis title
        axis.title.y = element_text(hjust = 0.5))+
  ggtitle("Mitjana diària de temperatura a Seattle per mes")+
  labs(y="Mes",x="Temperatura en graus Celsius")



