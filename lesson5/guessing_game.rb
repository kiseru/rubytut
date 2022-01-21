prng = Random.new()
number_to_guess = prng.rand(0..15)
puts "Загадано число от 0 до 16, отгадайте какое?"
3.times do
    input = gets.chomp.to_i

    if number_to_guess == input
        abort "Ура, вы выиграли!"
    end

    if input > number_to_guess
        puts "нужно меньше"
    else
        puts "нужно больше"
    end

    if (input - number_to_guess).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end
end

abort "В этот раз вам не повезло. Было загадано число #{number_to_guess}"
