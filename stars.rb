def print_stars(star_count)
    puts "Вот ваши звезды :)"
    star_count.times do
        print "*"
    end
    puts
end

puts "Сколько вам звезд на погоны?"
star_count = gets.to_i
print_stars(star_count)