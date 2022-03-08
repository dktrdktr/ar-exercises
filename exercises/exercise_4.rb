require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
user = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
user = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
user = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true)
puts Store.count

@mens_stores = Store.where("mens_apparel = true")
# puts @mens_stores.class
for store in @mens_stores do
  puts store.name
  puts store.annual_revenue
end
puts Store.where("annual_revenue > 1000000").count