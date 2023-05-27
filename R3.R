# Join (Merge) data frames (inner, outer, left, right) 
df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Oven", 3), rep("Television", 3)))
df1
df2 = data.frame(CustomerId = c(2, 4, 6,7), State = c(rep("California", 3), rep("Texas", 1)))
df2
# Merging happens based on the common column name in both the data sets
# Inner Join
merge(x=df1,y=df2,by="CustomerId")
df<-merge(x=df1,y=df2,by="CustomerId") #by.x = 'Customer_Id', by.y = 'CustomerId')
df
# Outer Join
df<-merge(x=df1,y=df2,by="CustomerId",all=TRUE)
df

df<-merge(x=df1,y=df2,by="CustomerId",all.y = TRUE)
df

x<-c(8,'Oven','California') # cbind is used to combine column wise 
df3<-rbind(df,x) # it is used to combine rows in data frame
df3
nc <- c('A', 'B','C', 'D', 'r')
df4 <- cbind(df3,nc)
df4

# Left outer join
df<-merge(x=df1,y=df2,by="CustomerId",all.x=TRUE)
df
# Right outer join 
df<-merge(x=df1,y=df2,by="CustomerId",all.y=TRUE)
df
# Cross join
df<-merge(x = df1, y = df2, by = NULL)
df

library(datasets)
data("iris")
View(iris)

# Apply functions 
# Returns a vector or array or list of values obtained by 
#applying a function to margins of an array or matrix or data frames 
#apply(df , 1 or 2 , function)

z = apply(iris[,c(1:4)],1,mean)
z
z1 = apply(iris[,c(1:4)],2,median)
# # lapply function takes list, vector or Data frame  as input and returns only list as output
#lapply(df , function)
x = lapply(iris[,1:4],mean)
x
class(x)
# # sapply function takes list, vector or Data frame  as input. It is similar to lapply 
#function but returns only vector as output

y = sapply(iris[,1:4],mean)
y
class(y)
list1 <- list(a = 11: 12, b= 40:60)

# Printing the length of list1 objects
lapply(list1, length)
sapply(list1, length)

data("iris")
iris$Sepal.Length

attach(iris)
Sepal.Length
detach(iris)
Sepal.Length
# tapply
tapply(Sepal.Length, Species, mean) # mean of Sepal.Length for all 3 Species 

tapply(Sepal.Width, Species, median)
mean(iris$Sepal.Length)

library(datasets)
data("mtcars")
View(mtcars)
mtcars$mpg
mpg

nrow(mtcars) # no.of rows in mtcars
row.names(mtcars) # row names 
ncol(mtcars) # number of columns 
colnames(mtcars) # column names in mtcars 
names(mtcars) 
dim(mtcars) # dimensions ( rows X columns )
dimnames(mtcars) # Dimension names ( row names and column names )

head(mtcars,10) # top 10 observations 
tail(mtcars) # bottom 10 observations
summary(mtcars)
data("mtcars")
min(mtcars$mpg, na.rm = T) # na.rm --> Remove NA values 
max(mtcars$mpg, na.rm = T)
range(mtcars$mpg,na.rm = T) # Return both min and max 

d1 = read.csv('cars1.csv')
summary(d1)
min(d1$MPG)
min(d1$MPG, na.rm=T)
# mean, median
mean(mtcars$mpg, na.rm = T) # Average 
median(mtcars$mpg, na.rm = T) # middle most value in data after sorting in ascending or descending
range(mtcars$mpg,na.rm = T)
mode(mtcars$hp)

library(modeest)
mlv(mtcars$hp, method = "mfv")

mtcars$cyl = factor(mtcars$cyl)
str(mtcars)
x
table(mtcars$gear)


##Handy dplyr Verb:
#Filter --> filter()
#Select --> select()
#Arrange --> arrange()

#install.packages('dplyr')
library(dplyr)
#Structure:
# First Argument is a DataFrame
# Subsequent Argument say what to do with Data Frame
# Always return a Data Frame

#You can use "," or "&" to use and condition
#filter(df , condition )
mtcars[,c(2,10)] # extract entire rows and in columns 2 and 10 
car_8 <- filter(mtcars , cyl==8) 

filter(mtcars,cyl==8 & gear==5)
c1 <- filter(mtcars,cyl==8 | gear == 5) # and gate (&) and OR gate(|)

#select method
sel = select(mtcars,-c(mpg,cyl,gear))
mtcars[c('mpg','cyl','gear')]

sel
df1 <- filter(sel,cyl == 4)
# Use ":" to select multiple contiguous columns, 
#and use "contains" to match columns by name

select(mtcars,carb,mpg:disp,gear)

#Syntax:
#arrange(dataframe,orderby)
arrange(mtcars,cyl)
arrange(mtcars,desc(cyl), desc(gear))
arrange(select(mtcars,cyl,gear),cyl)
arrange(select(mtcars,cyl,gear),cyl,desc(gear))
arrange(mtcars,cyl,gear)
arrange(select(mtcars,cyl,gear),desc(cyl))
arrange(select(mtcars,cyl,gear),cyl,desc(gear))

# Visualizations
data("mtcars")
View(mtcars)
plot(mtcars$mpg,mtcars$disp, type = 'p') # Relationship between variables Scatterplot
plot(mtcars$cyl, mtcars$disp)

# Histogram (Univariate)
hist(mtcars$mpg)
hist(mtcars$mpg, breaks =seq(10,40,2))
# Box Plot (To identify outliers)

boxplot(mtcars$hp, col='blue', horizontal= TRUE)

install.packages("ggplot2")
library(ggplot2)

par('mar')
pairs(mtcars)
pairs(mtcars[,1:7])
a = cor(mtcars)


