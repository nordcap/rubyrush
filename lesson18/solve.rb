puts "Сколько сейчас стоит 1 доллар в рублях?"
kurs = gets.to_f
puts "Сколько  у вас рублей?"
count = gets.to_i
print "Ваши запасы равны: $#{(count / kurs).round(2)}"
