require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.name = "Vancouver"
@store1.save

puts "@store1's name: #{@store1.name}"
puts "@store2's name: #{@store2.name}"