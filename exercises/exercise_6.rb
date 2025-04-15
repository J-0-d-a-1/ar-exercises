require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Tanaka", hourly_rate: 45)
@store1.employees.create(first_name: "Jake", last_name: "McDonald", hourly_rate: 50)
@store2.employees.create(first_name: "Emily", last_name: "Chen", hourly_rate: 40)
@store2.employees.create(first_name: "Hiroshi", last_name: "Sato", hourly_rate: 38)
# @store3.employees.create(first_name: "Mia", last_name: "Johnson", hourly_rate: 55)
# @store3.employees.create(first_name: "David", last_name: "Liu", hourly_rate: 42)
# @store3.employees.create(first_name: "Sophie", last_name: "Kim", hourly_rate: 43)
# @store4.employees.create(first_name: "Carlos", last_name: "Diaz", hourly_rate: 41)
# @store4.employees.create(first_name: "Yuki", last_name: "Nakamura", hourly_rate: 39)
# @store5.employees.create(first_name: "Natalie", last_name: "Brown", hourly_rate: 52)
# @store5.employees.create(first_name: "Ryan", last_name: "Wong", hourly_rate: 45)
# @store5.employees.create(first_name: "Aiko", last_name: "Yamamoto", hourly_rate: 44)