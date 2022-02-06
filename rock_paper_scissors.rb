# frozen_string_literal: true

vars = %w[
  Камень
  Ножницы
  Бумага
]

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'
user_var = gets.chomp.to_i
abort 'Некорректный ввод' unless (0..2).include? user_var

puts "Вы выбрали: #{vars[user_var]}"
prng = Random.new
comp_var = prng.rand(0..2)
puts "Компьютер выбрал: #{vars[comp_var]}"
if user_var == comp_var
  puts 'Ничья'
elsif user_var == 2 && comp_var.zero? || user_var < comp_var
  puts 'Вы победили'
else
  puts 'Победил Компьютер'
end
