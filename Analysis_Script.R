# Reading in the data sets
sales_data = read.csv('~/Documents/Gits/predict_sales/data/sales_train.csv',header = TRUE)
shops_data = read.csv('~/Documents/Gits/predict_sales/data/shops.csv', header = TRUE)
items_data = read.csv('~/Documents/Gits/predict_sales/data/items.csv', header = TRUE)
items_categories_data = read.csv('~/Documents/Gits/predict_sales/data/item_categories.csv', header = TRUE)
test_set = read.csv('~/Documents/Gits/predict_sales/data/test.csv', header = TRUE)

nrow(items_data)
# 22170 items in total on the market

no_of_items_sold = nrow(unique(sales_data[c('item_id')]))
# 21807 out of total 22170 items have been sold.

sales_count_by_shop = table(sales_data$shop_id)
# checking which shop has the highest sales

# Now since we have to predict sales of shops and its items month wise
# Let's do some grouping into the sales data
# I'll group sales by shop and then by item.
install.packages("dplyr")
library(dplyr)

grouped_by_shop = sales_data %>% group_by(shop_id)

# basically we want to aggregate the sales of each item in each month for each shop
# and create a new data-set for this
install.packages("foreach")
library(foreach)

refined_sales_data = foreach(i = 0:max(shops_data$shop_id)) %do% {
  current_shop_subset = subset(sales_data, sales_data$shop_id == i)
  current_shop_shrunk = shrinking_by_month(current_shop_subset)
}

shrinking_by_month = function(a){
  list_items = unique(a$item_id)
  foreach(i=list_items){
    current_item_subset = subset(a, a$item_id == i)
    
  }
}

