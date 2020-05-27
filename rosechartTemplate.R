#roseplot of 3 scales with 4-4 subscales (read from 3 separate file)

library(ggplot2)
library()
library(gridExtra)
library(grid)
library(ggplot2)
library(lattice)


library(extrafont)
font_import()
loadfonts(device = "win")


setwd("path")


Data1 <- read.csv(file="data1.csv", header=TRUE, sep=",")
Data2 <- read.csv(file="data2.csv", header=TRUE, sep=",")
Data3 <- read.csv(file="data3.csv", header=TRUE, sep=",")


merged <- rbind(Data1, Data2, Data3)


#actual stuff

roseplot <- ggplot(data=merged, aes(x= Scalenames, y=Mean, fill = Type)) + geom_bar(stat="identity", position = "dodge") + coord_polar(theta = "x", direction=1 ) + theme(panel.background = element_rect(fill = 'white')) + theme(text=element_text(size=12,  family="Open sans")) + theme(panel.grid.major = element_line(size = 0.5, linetype = 'solid', colour = "black"), panel.grid.minor = element_line(size = 0.25, linetype = 'solid', colour = "black"))
roseplot
