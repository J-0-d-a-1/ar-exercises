require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validate :at_least_one_of_mens_or_womens

  def at_least_one_of_mens_or_womens
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts "Total stores: #{Store.count}"