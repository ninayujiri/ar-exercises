require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

new_employee = @store1.employees.create(
  first_name: 'Joe',
  last_name: 'Cool',
  hourly_rate: 200
)

# pp Employee.last