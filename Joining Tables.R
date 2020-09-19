'Let's examine the order with an order_id of 1. 
It was purchased by Customer 2. To find out the customer's name, 
we look at the customers table and look for the item with a customer_id value 
of 2. We can see that Customer 2's name is Jane Doe and that she lives at 456 Park Ave.

Doing this kind of matching is called joining two data frames.'
# inspect orders, customers and products
head(sales)
head(targets)

# define sales_vs_targets here:
sales_vs_targets <- sales %>%
  inner_join(targets)

# define crushing_it here:
crushing_it <- sales_vs_targets %>%
  filter(revenue>target)

crushing_it

# define all_data here:
all_data <- sales %>%
  inner_join(targets) %>%
  inner_join(men_women)
head(all_data)

# define results here:
results <- all_data %>%
  filter(revenue > target & women > men)
head(results)

#Join on Specific Columns I
  
  # inspect orders and products
  head(orders)
  head(products)

  # rename the id column of products here:
  products <- products %>%
    rename(product_id = id)
  
  head(products)
  
  # define orders_products here:
  orders_products <- orders %>%
    inner_join(products)
  
  head(orders_products)
  

#Join on Specific Columns II
  # define orders_products here:
  orders_products <- orders %>%
    inner_join(products,
               by = c('product_id' = 'id'))
  orders_products
 
  # define products_orders here:
  products_orders <- products %>%
    inner_join(orders,
               by = c('id' = 'product_id'),
               suffix = c('_product','_order'))
  products_orders
  
#Mismatched Joins
  head(orders)
  head(products)

  # define orders_products here:
  orders_products <- orders %>% 
    inner_join(products)
  orders_products
  
#Full Join
  # inspect store_a and store_b
  head(store_a)
  head(store_b)
 
  # define store_a_b_full here:
  store_a_b_full <- store_a %>%
    full_join(store_b)
  
  store_a_b_full

#Left and Right Joins
  # define left_a_b here:
  left_a_b <- store_a %>%
    left_join(store_b)
  left_a_b
  
  # define left_b_a here:
  left_b_a <- store_b %>%
    left_join(store_a)
  left_b_a

#Concatenate Data Frames
  # define menu here:
  menu <- bakery %>%
    bind_rows(ice_cream)
  menu
  
# define v_to_c here:
  v_to_c <- visits %>%
    inner_join(checkouts)
  
  v_to_c
  
# define avg_time_to_check here:
  v_to_c <- v_to_c %>% 
    mutate(time = checkout_time - visit_time)
  v_to_c
  
  avg_time_to_check <- v_to_c %>% 
    summarize(mean_time = mean(time))
  avg_time_to_check
  
  












