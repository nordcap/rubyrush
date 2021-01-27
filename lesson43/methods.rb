def cls
  system "clear" or system "cls"
end

def get_letters
  slovo = ARGV[0]
  if (slovo == nil || slovo == "")
    abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
  end
  slovo.split("")
end

def get_user_input
  letter = ""
  while letter == ""
    letter = STDIN.gets.chomp
  end
  letter
end

def check_result(user_input, letters, good_letters, bad_letters)
  #проверим, не повторяется ли пользователь,
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end
  if letters.include?(user_input) ||
    (user_input == 'е' && letters.include?('ё')) ||
    (user_input == 'ё' && letters.include?('е')) ||
    (user_input == 'й' && letters.include?('и')) ||
    (user_input == 'и' && letters.include?('й'))
      good_letters << "ё" if user_input == "е"
      good_letters << "е" if user_input == "ё"
      good_letters << "й" if user_input == "и"
      good_letters << "и" if user_input == "й"
      good_letters << user_input
      if (letters - good_letters).empty?
        return 1 #отгадывание всего слова
      else
        return 0 #отгадывание буквы
      end
    else
      bad_letters << user_input
      return -1
    end

  end

  def get_word_for_print(letters, good_letters)
    result = ""
    for item in letters
      if good_letters.include?(item)
        result += item + " "
      else
        result += "__ "
      end
    end
    result
  end

  def print_status(letters, good_letters, bad_letters, errors)
    puts "\nСлово: " + get_word_for_print(letters, good_letters)
    puts "Ошибки (#{errors}): #{bad_letters.join(", ")} "

    if errors >= 7
      puts "Вы проиграли :("
    else
      if letters.uniq.size == good_letters.uniq.size
        puts "Поздравляем, вы выиграли!"
      else
        puts "У вас осталось попыток: " + (7 - errors).to_s
      end
    end
  end

