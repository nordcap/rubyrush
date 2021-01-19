puts "Какая у вас на руках валюта?
  1. Рубли
  2. Доллары"
to_convert = gets.to_i
if(to_convert==1)
  #конвертируем из рублей в даллары
  puts "Сколько сейчас стоит 1 доллар в рублях?"
  kurs = gets.to_f
  puts "Сколько  у вас рублей?"
  count = gets.to_i
  print "Ваши запасы равны: $#{(count / kurs).round(2)}"
elsif(to_convert==2)
  puts "Сколько сейчас стоит 1 доллар?"
  kurs = gets.to_f
  puts "Сколько у вас долларов?"
  count = gets.to_i
  print "Ваши запасы равны: $#{count * kurs}"
end

