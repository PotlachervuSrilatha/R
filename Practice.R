# 1 basics of R
2+2
10-3
10/3
10*10
100%%3
6^3

x <- 5+5
abc_xyz <- 198%%5
var1.a <- 15+10
y <- sqrt(var1.a)
yes <- 10-30
z <- yes^5
z2 <- yes^4
a <- 15
b <- 25
c <-35
abc <- a+b+c
rep(1,10)
rep(10,20)
rep(5,50)
seq(10,100)
seq(5,50, by=5)
rep(c(1,2,3),5)

# Vector.r
x <-c(2,0,0,4)
x[3]
x[-4]
x[1] <- 3
x
x[-2]= 5
x
y <-c(1,9,9,9)
y < 9
y>5
y>=9
y<=1
y[1]== 1
y[2] != 10

# Data framing.r
df <- data.frame(x= 1:3, y= c('a','b','c'))
df
df[1]
df[1,]
df[1,1]
df[c(1,3),2]
df[c(1,3),]
df[c(1,3),1]
df1 <- data.frame(x=1:5, name = c('Srilatha', 'varun','nisha','kranthi','family'))
df1                
df1[c(1,2),]
df1[c(2)]

df1[c(1)]
df1[c(1,3),2]
df1[1,]
df1[2,]
df1[c(1,4),c(2)]
df1[3,c(1,2)]
df1[c(1,3),1]
df1[c(1,3),3]
df1[c(1,4),1]
df1[c(3),1]
df1[c(2),2]
df1[c(1,2),1]

x <- data.frame(x=1:9,= c(108, 110, 123, 134, 135, 145, 167, 187, 199)) 
df1 # It will show error
mean(df1$name) # 145.3333

# This is correct
x=data.frame(x=1:18, scores = c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56))
x
mean(x$scores)    # 41

median(x$scores)  # 40.5
library(moments)
mfv(x$scores)   #  41
var(x$scores)  #  25.52941
sd(x$scores)  #   5.052664
boxplot(x$scores)
hist(x$scores)

library(dplyr)

## 
library(nycflights13)
dim(flights)
View(flights)
f1 <- flights

flights
head(flights,10)
tail(flights,10)
tail(flights,5)
head(flights,5)
library(dplyr)
select(flights,dep_time,arr_time,arr_delay)
filter(flights,month==1,day==1,origin=="EWR") #filter method
filter(flights,carrier=="AA"|carrier=="UA")
filter(flights,carrier=="AA" & carrier=="UA")
flights %>%
  select(carrier,dep_delay)%>% #chaining method
  filter(dep_delay>100)
flights%>%
  select(dep_time,arr_time,arr_delay)%>%
  arrange(arr_delay)
student
select(student,eid,name,place)
filter(student,branch=="cse")
filter(student,place=="hyderabad")
filter(student,place=="kadapa" | branch=="cse")
filter(student,place=="hyderabad" & branch=="cse")
student%>%
  select(eid,name,percentage) %>%
  arrange(desc(percentage))






