arr = [1, 2, 3, 4, 5]
puts "Исходный массив:"
puts arr.to_s
puts "Массив в обратном порядке:"
puts arr.reverse.to_s
puts "Исходный массив (не изменился):"
puts arr.to_s
puts "Исходный массив (после изменения):"
puts arr.reverse!.to_s