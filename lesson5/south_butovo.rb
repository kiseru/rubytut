puts "Вы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят
1. Попытаться убежать
2. Продолжать идти"

choice = gets.chomp

if choice == "1"
    abort "Ребя без труда догнали вас и побили. Не знаю, за что"
else
    puts "Один из ребят вышел вперёд и спросил \"Сиги есть?\"
    1. Дать прикурить
    2. -- Не курю"

    choice = gets.chomp

    if choice == "1"
        abort "Прикурив, ребята отправились дальше"
    else
        abort "Ребята расстроились и побили вас. Теперь уже ясно, за что"
    end
end