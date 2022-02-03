sales_data = read.csv('~/Documents/Gits/predict_sales/data/sales_train.csv',header = TRUE)
shops_data = read.csv('~/Documents/Gits/predict_sales/data/shops.csv', header = TRUE)
items_data = read.csv('~/Documents/Gits/predict_sales/data/items.csv', header = TRUE)
items_categories_data = read.csv('~/Documents/Gits/predict_sales/data/item_categories.csv', header = TRUE)

nrow(items_data)
# 22170 items in total on the market

no_of_items_sold = nrow(unique(sales_data[c('item_id')]))
# 21807 out of total 22170 items have been sold.

