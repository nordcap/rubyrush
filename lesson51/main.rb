require_relative './films'

puts "Фильмы какого режиссера Вы хотите посмотреть?"
family = gets.chomp
arr_fillms=[]
for i in (1..3)
  puts "Какой-нибудь его хороший фильм?"
  film = gets.chomp
  arr_fillms.push(Films.new(film, family))
end

rand = arr_fillms.sample
puts "И сегодня вечером рекомендую посмотреть: #{rand.name_cinema}"
puts "Режиссера: #{rand.family}"