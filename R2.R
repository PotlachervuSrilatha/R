# Decision Making Statements in R
# If Statement
# Syntax: 
if (test_expression) {
  
 statement
}

a = 4
x <- -4
if(x > 0){
  print("Positive number")
  print(x)
} else{
  print('negative')
}
print('jjh')

# If Else Statement
# syntax: 
if (test_expression) {
  statement1
} else {
  statement2
  }

x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

ifelse(x>0,  print("Non-negative number"),  print("negative number") )
# Nested If Else Statement
if ( test_expression1) {
  statement1
} else if ( test_expression2) {
    statement2
  } else if ( test_expression3) {
  statement3
  } else  statement4

x <-5
if (x == 0) {
  print("Zero")
} else if (x > 0) {
  print("Positive number")
} else {
  print("Negative Number")
  }
ifelse((x==0), print('zero'), ifelse((x>0), print('+ve number'), print('-ve no')))

# There is an easier way to use if...else statement specifically for vectors in R programming
# Syntax: ifelse(test_expression,x,y)
a = c(5,7,2,9)
help()
?ifelse
ifelse(a %% 2 == 0,"even","odd")
a = 67
if (a%%2==0){
  'even'
} else {
  'odd'
}

a/2

a%%2
# for more than 2 conditions

client <- c("private", "public", "other",'private')

ifelse(client =='private', 1.12 , ifelse(client == 'other', 1.06, 1))

#ifelse(contition , true , ifelse(condition , 1 , ifelse(condition , 2 , 3)))
# Loops in R
# While loop
# Syntax
while (test_expression) {
  statement
}

i <- 1
while (i <= 6) {
  print(i)
  i = i+1
}

i <- 1

repeat{
  print(i)
  i= i+1
  if (i> 6){
    break
  }
}

  # Repeat loop
# Syntax 
repeat { 
  commands 
  if(condition) {
    break
  }
}

v <- c("Hello")
cnt <- 3

repeat {
  print(v)
  cnt <- cnt+1

  if(cnt > 5) {
    break
  }
}

# For Loop 
# Syntax
for (value in vector) {
  statements
}
a <- c(45,67,99,45,34,200, 50, 60)
for(i in a){
  print(i)
}
for (i in a){
  if(i%%2==0){
    print('even')
  }else{
    print('odd')
  }
}

for (x in a){
  if(x<40){
    next
  }
  print(x^2)
  print('test')
}
v <- c(2,3,4,5,1)
v
for ( a in v) {
  print(a)
}

for (i in 1:length(v)){
  print(i)
  print('*')
  if (v[i]>3){
    print('neha')
    break #next
  }
  #print(i)
  print(v[i])
}

# Loop Control Statements
# break Statement - terminates the loop statement and transfers execution to the statement 
# immediately following the loop
v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt + 1
  if(cnt > 5) {
    break
  }
  print(cnt)
}

# next Statement - useful when we want to skip the current iteration of a loop without terminating it
v <- LETTERS[1:6]
v
for ( i in v) {
  if (i == "E") {
    print('error')
    next
  }
  print(i)
}

# Function 
function_name <- function(arg_1, arg_2, ...) {
  Function body 
}
# User-defined Function
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}
# Calling a Function
new.function(5)
new.function(15)

even_fun <- function(a){
  if(a%%2==0){
    return ('even')
  } else {return ('odd')}
}
even_fun(30)

l = c(30,50,88,99,667)
for (i in l){
  even_fun(i)
}
# Calling a Function without an Argument
new.function <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	
new.function()

cal_tax<- function(sal=0){
  if(sal<10000){
    tax_perc = 0
    tax = tax_perc*sal
  } else if(sal>10000 && sal <100000) {
    tax_perc = 0.05
    tax = tax_perc*sal
  } else{
    tax = 0.1*sal
  }
  return(tax)
}
cal_tax(300000)

# Calling a Function with Default Argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}
# Call the function without giving any argument.
new.function()
# Call the function with giving new values of the argument.
new.function(5,7)

# Lazy Evaluation of Function
# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}
# Evaluate the function without supplying one of the arguments.
new.function(10,12)

# Mode in r

mySamples <- c(29, 4, 5, 7, 29, 19, 29, 13, 25, 19)
mean(mySamples)
median(mySamples)
#mode(mySamples)

library(modeest)
mlv(mySamples, method = "mfv") #most likely value

# Importing Cars dataset
############################################################
data = read.csv(file.choose())
d1 = read.csv('cars1.csv')
data1 = read.csv('C:\\Users\\Neha\\Documents\\DS_course_material\\Basics of R Material\\cars1.csv')
View(data)
summary(data)
str(data)

