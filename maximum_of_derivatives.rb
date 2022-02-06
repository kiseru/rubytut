# frozen_string_literal: true

prng = Random.new

puts 'Какой длины будет массив случайных чисел?'
arr_size = gets.chomp.to_i
arr = []
max_item = 0
arr_size.times do
  new_item = prng.rand(0..100)
  arr << new_item
  max_item = new_item if max_item < new_item
end

puts arr.to_s
puts 'Самое большое число:'
puts max_item
