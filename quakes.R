##Home work
View(e_quakes)
View(quakes)
e_quakes<-datasets::quakes

#SD

sd(quakes$lat,na.rm = T)
sd(quakes$long,na.rm = T)
sd(quakes$depth,na.rm = T)
sd(quakes$mag,na.rm = T)
sd(quakes$stations,na.rm = T)

#var
var(quakes)
var(quakes$lat)
var(quakes$long)
var(quakes$depth)
var(quakes$mag)
var(quakes$stations)

#skewness
library("modeest")
skewness(quakes)

#kurtosis
library(moments)
kurtosis(quakes)

#hist
hist(quakes$lat,col='red')
hist(quakes$long,col='green')
hist(quakes$depth,col='maroon')
hist(quakes$mag,col='yellow')
hist(quakes$stations,col='pink')

?barplot
barplot(quakes$lat,col ='red')
barplot(quakes$long,col='blue')
barplot(quakes$depth,col='green')
barplot(quakes$mag,col='orange')
barplot(quakes$stations,col='skyblue')

#boxplot
boxplot(quakes$lat,col ='red')
boxplot(quakes$long,col='blue')
boxplot(quakes$depth,col='green')
boxplot(quakes$mag,col='orange')
boxplot(quakes$stations,col='skyblue')

