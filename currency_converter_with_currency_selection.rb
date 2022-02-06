# frozen_string_literal: true

puts "Какая у вас на руках валюта?\n1. Рубли\n2. Доллары"
chosen_currency = gets.chomp.to_i
puts 'Сколько сейчас стоит 1 доллар?'
dollar_cost = gets.chomp.to_f
if chosen_currency.zero?
  puts 'Сколько у вас рублей?'
else
  puts 'Сколько у вас долларов?'
end
currency_amount = gets.chomp.to_f
if chosen_currency.zero?
  converted_currency_amount = currency_amount / dollar_cost
  puts "Ваши запасы на сегодня равны: #{converted_currency_amount} $"
else
  converted_currency_amount = currency_amount * dollar_cost
  puts "Ваши запасы на сегодня равны: #{converted_currency_amount} руб."
end
