require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(
  first_name: 'Nina',
  last_name: 'Yujiri',
  hourly_rate: 200
)

@store1.employees.create(
  first_name: 'Bob',
  last_name: 'Ross',
  hourly_rate: 100
)

@store1.employees.create(
  first_name: 'Joe',
  last_name: 'Smith',
  hourly_rate: 50
)

@store1.employees.create(
  first_name: 'Jane',
  last_name: 'Doe',
  hourly_rate: 40
)

@store2.employees.create(
  first_name: 'Jake',
  last_name: 'Dowling',
  hourly_rate: 150
)

@store2.employees.create(
  first_name: 'Marge',
  last_name: 'Simpson',
  hourly_rate: 75
)

@store2.employees.create(
  first_name: 'Patrick',
  last_name: 'Star',
  hourly_rate: 50
)

@store2.employees.create(
  first_name: 'Lucy',
  last_name: 'Lu',
  hourly_rate: 60
)

puts Employee.count