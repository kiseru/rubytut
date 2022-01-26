NUMBER_OF_ATTEMPS = 3
INTERVAL_START = 0
INTERVAL_END = 16

def generate_number_to_guess(interval_start, interval_end)
    prng = Random.new()
    number_to_guess = prng.rand(interval_start...interval_end)
    puts "Загадано число от #{interval_start} до #{interval_end}, отгадайте какое?"
    number_to_guess
end

def make_attempt(attempt, number_to_guess)
    check_attempt(attempt, number_to_guess)
    give_hint(attempt, number_to_guess)
end

def check_attempt(attempt, number_to_guess)
    if number_to_guess == attempt
        abort "Ура, вы выиграли!"
    end
end

def give_hint(attempt, number_to_guess)
    say_need_more_or_less(attempt, number_to_guess)
    say_hot_or_cold(attempt, number_to_guess)
end

def say_need_more_or_less(attempt, number_to_guess)
    if attempt > number_to_guess
        puts "нужно меньше"
    else
        puts "нужно больше"
    end
end

def say_hot_or_cold(attempt, number_to_guess)
    if (attempt - number_to_guess).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end
end


number_to_guess = generate_number_to_guess(INTERVAL_START, INTERVAL_END)
NUMBER_OF_ATTEMPS.times do
    input = gets.chomp.to_i
    make_attempt(input, number_to_guess)
end
abort "В этот раз вам не повезло. Было загадано число #{number_to_guess}"
