# frozen_string_literal: true

cars = %w[
  Mazda
  Toyota
  Honda
  Skoda
  BMW
  Lotus
  Lada
  Niva
]

puts "У нас всего #{cars.size} машин. Вам какую?"
car_index = gets.chomp.to_i

abort 'Извините, машины с таким номером у нас нет :(' unless car_index.between?(0, cars.size)

puts 'Поздравляю, вы получили:'
puts cars[car_index]
