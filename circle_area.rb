def circle_area(radius)
    Math::PI * radius
end

puts "Введите радиус круга:"
first_circle_radius = gets.to_f
first_circle_area = circle_area(first_circle_radius)
puts "Площадь круга: #{first_circle_area}"

puts "Введите радиус второго круга:"
second_circle_radius = gets.to_f
second_circle_area = circle_area(second_circle_radius)
puts "Площадь второго круга: #{second_circle_area}"