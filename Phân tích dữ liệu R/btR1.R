install.packages("nycflights13")
library(nycflights13)
library(ggplot2)
library(dplyr)
# question 1
alaska <- flights %>% filter(carrier==c("AS"))


ggplot(alaska, aes(x = dep_delay, y = arr_delay)) + 
  geom_point(size=1)

# question 2
ewr <- weather %>% filter(origin==c("EWR"))

time <- ewr$time_hour

ggplot(aes(x = time_hour, y = temp), 
       data = subset(ewr, time < '2013/01/15 00:00:00' )) + 
  geom_line(size=0.5)

# question 3

temp <- weather$temp

ggplot(weather, aes(x=temp)) + geom_histogram()

# question 4

ggplot(weather, aes(x=factor(month), y=temp)) + 
  geom_boxplot()

# question 5

ggplot(flights, aes(carrier)) + geom_bar()

