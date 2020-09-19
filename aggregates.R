'An aggregate statistic is a way of creating a single number that describes a group of numbers. 
Common aggregate statistics include mean, median, and standard deviation'

# load packages
library(readr)
library(dplyr)

# load data
orders <- read_csv("orders.csv")
page_visits <- read_csv("page_visits.csv")

# inspect data frames
head(orders)
head(page_visits)

# average price of order
average_price <- orders %>% 
  summarize(mean_price = mean(price, na.rm = TRUE))
average_price

# page visits by UTM source
click_source <- page_visits %>%
  group_by(utm_source) %>%
  summarize(count = n())
click_source

# page visits by UTM source and month
click_source_by_month <- page_visits %>%
  group_by(utm_source,month) %>%
  summarize(count = n())
click_source_by_month

#Calculating Column Statistics
  # inspect first 10 in orders here:
  head(orders, 10)

  # define most_expensive here:
  most_expensive  <- orders %>%
    summarize(most_expensive = max(price))
  print(most_expensive)
  
  # define most_expensive here:
  most_expensive  <- orders %>%
    summarize(most_expensive = max(price, na.rm = TRUE))
  print(most_expensive)
  
  # define num_colors here:
  num_colors <- orders %>%
    summarize(num_colors = n_distinct(shoe_color))
  num_colors
  
#Calculating Aggregate Functions I
  #mean, standard deviation, median, percentiles, etc.
  #summary functions discussed in the last exercise (mean(), median(), 
  #sd(), var(), min(), max(), IQR() and n_distinct())
  #n() will return the count of the rows within a group, and does not require a column as an argument
  
  # define pricey_shoes here:
  pricey_shoes <- orders %>%
    group_by(shoe_type) %>%
    summarize(max_price = max(price, na.rm = TRUE))
  
  pricey_shoes
  
  # define shoes_sold here:
  shoes_sold <- orders %>%
    group_by(shoe_type) %>%
    summarize(count = n())
  
  shoes_sold
  
#Calculating Aggregate Functions II
  # define shoe_counts here:
  shoe_counts = orders %>%
    group_by(shoe_type,shoe_color) %>%
    summarize(count = n())
  
  shoe_counts
  
  # define shoe_prices here:
  shoe_prices <- orders %>%
    group_by(shoe_type, shoe_material) %>%
    summarize(mean_price = mean(price, na.rm = TRUE))
  shoe_prices
  
#Combining Grouping with Filter
  # define most_pop_orders here:
  most_pop_orders <- orders %>%
    group_by(shoe_type) %>%
    filter(n() > 16)
  
  most_pop_orders
  
  # define diff_from_mean here:
  diff_from_mean <- orders %>%
    group_by(shoe_type) %>%
    mutate(diff_from_shoe_type_mean = price - 
             mean(price, na.rm = TRUE))
  
  diff_from_mean
  
  # define average_price here:
  average_price <- orders %>%
    summarize(orders) %>%
    summarize(mean_price = mean(price, na.rm = TRUE))
  average_price
  
  # define click_source here:
  click_source <- page_visits %>%
    group_by(utm_source) %>%
    summarize(count = n(), na.rm = TRUE)
  
  click_source
  
  # define click_source_by_month here:
  click_source_by_month <- page_visits %>%
    group_by(utm_source, month) %>%
    summarize(count = n(), na.rm = TRUE)
  
  click_source_by_month
  
  
  

