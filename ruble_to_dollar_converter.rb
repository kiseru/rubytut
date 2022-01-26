puts "Сколько сейчас стоит 1 доллар в рублях?"
dollar_cost = gets.chomp.to_f
puts "Сколько сейчас у вас рублей?"
rubles_amount = gets.chomp.to_f
dollars_amount = (rubles_amount / dollar_cost).round(2)
puts "Ваши запасы равны: $#{dollars_amount}"
