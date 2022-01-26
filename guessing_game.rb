NUMBER_OF_ATTEMPS = 3
INTERVAL_START = 0
INTERVAL_END = 16

prng = Random.new()
number_to_guess = prng.rand(INTERVAL_START...INTERVAL_END)
puts "Загадано число от #{INTERVAL_START} до #{INTERVAL_END}, отгадайте какое?"
NUMBER_OF_ATTEMPS.times do
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
