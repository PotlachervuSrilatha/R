#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
library(datasets)
View(airquality)
airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]

df<-airquality[,-6]

summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)
#Histogram
hist(airquality$Ozone, breaks = seq(0, 200, 10))
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: numeric value indicating the orientation of the tick mark labels and any other text added to a 
# plot after its initialization. The options are as follows: always parallel to the axis (the default, 0), 
# always horizontal (1), always perpendicular to the axis (2), and always vertical (3).)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(3,3,3,3),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

