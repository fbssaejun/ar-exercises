require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#Total revenue in the company
puts Store.sum(:annual_revenue)

#Average revenue in the company
puts Store.average(:annual_revenue)

#Number of stores making more than 1M in revenue
puts Store.where("annual_revenue >= 1000000").count