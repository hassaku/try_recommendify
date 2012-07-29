# -*- encoding: UTF-8 -*-"
require './recommender'

# initialize recommender
recommender = Recommender.new

QueryItem = "商品１"
print "#{QueryItem}を購入した人はこんな商品も購入しています。\n"

# retrieve similar products to "product23"
recommender.for(QueryItem).each do |recommended_product|
  print "商品名 : #{recommended_product.item_id}\t類似度 : #{recommended_product.similarity}\n"
end

