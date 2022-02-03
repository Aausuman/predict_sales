sales_data = read.csv('~/Documents/Gits/predict_sales/data/sales_train.csv',header = TRUE)

no_of_items = nrow(unique(sales_data[c('item_id')]))
# 21807 distinct items in total.

no_of_shops = nrow(unique(sales_data[c('shop_id')]))
# 60 shops in total

