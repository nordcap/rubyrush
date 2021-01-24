def game(answer)
  x = gets.to_i
  diff = (answer - x).abs
  if (diff == 0)
    puts "Ура, вы выиграли!"
    exit
  end
  if (diff <= 2)
    str1 = "Тепло"
    if (answer > x)
      str2 = " (нужно больше)"
    elsif (answer < x)
      str2 = " (нужно меньше)"
    end
    puts str1 + str2
  elsif (diff >= 3)
    str1 = "Холодно"
    if (answer > x)
      str2 = " (нужно больше)"
    elsif (answer < x)
      str2 = " (нужно меньше)"
    end
    puts str1 + str2
  end
end

puts "  Загадано число от 0 до 16, отгадайте какое?"
answer = Random.rand(0..15)
for i in (1..3)
  game(answer)
end
puts "Загадано было число #{answer}"
