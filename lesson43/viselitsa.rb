require "./methods.rb"

cls
puts "Игра виселица. Версия 1. (с) AleBu\n\n"
sleep 1

#брать слово загаданное и возвращать его в виде массива его букв
letters = get_letters
puts letters
errors = 0
good_letters = []
bad_letters = []

while errors < 7
  # тут будем отгадывать слово
  print_status(letters, good_letters, bad_letters, errors)

  puts "\nВведите следующую букву"
  #спрашивать у пользователя букву
  user_input = get_user_input

  #проверять, есть ли загаданная буква в слове.
  result = check_result(user_input, letters, good_letters, bad_letters)
  #0 — пользователь отгадал букву или такая буква уже была
  # 1 — пользователь отгадал букву и всё слово
  # -1 — пользователь ошибся и такой буквы нет

  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

#результат игры
print_status(letters, good_letters, bad_letters, errors)