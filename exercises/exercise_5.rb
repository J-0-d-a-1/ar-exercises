require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "--- Total revenue of all stores ---"
puts Store.sum(:annual_revenue)
puts "--- Average revenue of all stores ---"
puts Store.average(:annual_revenue)

puts "--- Number of Stores over 1M annual sales ---"
puts Store.where("annual_revenue > ?", 1000000).count