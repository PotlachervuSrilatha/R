library(dplyr)

## 
library(nycflights13)
dim(flights)
View(flights)
f1 <- flights

## --------------
filter(flights, month == 1, day == 2)

## ----------
arrange(flights, year, month, day)

## -----------
arrange(flights, desc(arr_delay))

## ----------------
# Select columns by name
select(flights, year, month, day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))


## Create new columns-----------------
f2<- mutate(flights,
  gain = arr_delay - dep_delay,
  speed = distance / air_time * 60,
  gain_per_hour = gain / (air_time / 60)
)
f1$gain1 = f1$arr_delay - f1$dep_delay

## -------------
mutate(flights,
  gain = arr_delay - dep_delay,
  gain_per_hour = gain / (air_time / 60)
)

## ---------------
sample_n(flights, 10)
sample_frac(flights, 0.01)


## ---------------
destinations <- flights %>% group_by(flight, dest) %>%
summarise(planes = n_distinct(tailnum),
          flights = n()
)

month_day <- flights %>% group_by(month, day) %>% 
  summarise(count = n(), sum_delay = sum(arr_delay, na.rm = T))

f11 <- filter(flights, month==1 & day==1 )
## ------------------
daily <- group_by(flights, year, month, day)
(per_day   <- summarise(daily, flights = n()))
(per_month <- summarise(per_day, flights = sum(flights)))
(per_year  <- summarise(per_month, flights = sum(flights)))

## --------------
# `year` represents the integer 1
select(flights, year)
select(flights, 1)

## ----------------
t2 <- filter(
  summarise(
    select(
      group_by(flights, year, month, day),
      arr_delay, dep_delay
    ),
    arr = mean(arr_delay, na.rm = TRUE),
    dep = mean(dep_delay, na.rm = TRUE)
  ),
  arr > 30 | dep > 30
)

t1 <- flights %>% group_by(year, month, day) %>%
  summarise(
    arr = mean(arr_delay, na.rm = TRUE),
    dep = mean(dep_delay, na.rm = TRUE)
  )
t3 <- filter(t1,arr > 30 | dep > 30 )

