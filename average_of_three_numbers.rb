# frozen_string_literal: true

puts 'Введите число 1:'
number1 = gets.chomp.to_i
puts 'Введите число 2:'
number2 = gets.chomp.to_i
puts 'Введите число 3:'
number3 = gets.chomp.to_i
average = (number1 + number2 + number3).to_f / 3
puts "Среднее арифметическое: #{average}"
