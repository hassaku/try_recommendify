# -*- encoding: UTF-8 -*-"
require './recommender'

# initialize recommender
recommender = Recommender.new

# add `order_id->product_id` interactions to the order_item_sim input
recommender.order_items.add_set("Aさん", ["商品１", "商品２", "商品３"])
recommender.order_items.add_set("Bさん", ["商品１", "商品３"])
# Calculate all elements of the similarity matrix
recommender.process!

# enable to add incrementally
recommender.order_items.add_set("Cさん", ["商品１", "商品４"])
recommender.order_items.add_set("Dさん", ["商品１", "商品２", "商品３"])
recommender.process!

#recommender.delete_item!("商品１") 

