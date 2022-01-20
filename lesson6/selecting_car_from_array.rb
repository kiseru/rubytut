cars = [
    "Mazda",
    "Toyota",
    "Honda",
    "Skoda",
    "BMW",
    "Lotus",
    "Lada",
    "Niva"
]

puts "У нас всего " + cars.size.to_s + " машин. Вам какую?"
car_index = gets.chomp.to_i
if car_index < 0 || car_index >= cars.size
    abort "Извините, машины с таким номером у нас нет :("
end

puts "Поздравляю, вы получили:"
puts cars[car_index]
