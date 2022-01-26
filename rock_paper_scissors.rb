vars = [
    "Камень",
    "Ножницы",
    "Бумага",
]

puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
user_var = gets.chomp.to_i
unless user_var in 0..2
    abort "Некорректный ввод"
end

puts "Вы выбрали: #{vars[user_var]}"
prng = Random.new
comp_var = prng.rand(0..2)
puts "Компьютер выбрал: #{vars[comp_var]}"
if user_var == comp_var
    puts "Ничья"
elsif user_var == 2 && comp_var == 0 || user_var < comp_var
    puts "Вы победили"
else
    puts "Победил Компьютер"
end
