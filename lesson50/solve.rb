dict = { "Бэтмен" => "Джокер",
         "Шерлок Холмс" => "Профессор Мориарти",
         "Буратино" => "Карабас-Барабас",
         "Фродо Бэггинс" => "Саурон",
         "Моцарт" => "Сальери"
}

puts "Врага какого персонажа вы хотите узнать?"
name = gets.chomp

if dict.key?(name)
  puts dict[name]
else
  puts "Не удалось найти врага."
end