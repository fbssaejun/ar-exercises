require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
store = gets.chomp
@create_store = Store.create(name: store)

if @create_store.errors.any? # If there are errors, do something
  @create_store.errors.each do |attribute, message|
    puts attribute, message
  end
end