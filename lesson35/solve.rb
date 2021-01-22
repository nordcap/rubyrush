def square(radius)
  Math::PI * (radius ** 2)
end

puts "Введите радиус круга:"
r1 = gets.to_f
puts "Площадь круга: #{square(r1).round(2)}"

puts "Введите радиус второго круга:"
r2 = gets.to_f
puts "Площадь второго круга: #{square(r2).round(2)}"