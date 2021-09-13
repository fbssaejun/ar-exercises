require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Burnaby", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Richmond", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Gastown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

puts "Mens apparel"
@mens_stores.each do |store|
  puts "Name : #{store.name}, Annual revenue : #{store.annual_revenue}."
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue <= 1000000")

puts "Womens apparel"
@womens_stores.each do |store|
  puts "Name : #{store.name}, Annual revenue : #{store.annual_revenue}."
end