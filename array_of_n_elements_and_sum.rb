# frozen_string_literal: true

puts 'Введите N'
n = gets.chomp.to_i
arr = []
i = 0
sum = 0
while i < n
  i += 1
  arr << i
  sum += i
end
puts arr.to_s
puts "Сумма чисел: #{sum}"
