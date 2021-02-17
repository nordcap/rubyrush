class ResultPrinter
  def initialize
    @status_image = []
    current_path = File.dirname(__FILE__)
    counter = 0
    while counter <= 7
      file_name = current_path + "/image/#{counter}.txt"
      unless File.exist?(file_name)
        @status_image << "\n [image not found] \n"
      end

      f = File.new(file_name)
      @status_image << f.read
      f.close
      counter += 1
    end
  end

  def cls
    system "clear" or system "cls"
  end

  def print_status(game)
    cls #clear
    puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)
    puts "Ошибки: #{game.bad_letters.join(", ")} "
    print_viselitsa(game.errors)

    if game.status == -1
      puts "Вы проиграли :("
      puts "Загаданное слово было: #{game.letters.join(", ")}"
    elsif game.status == 1
      puts "Поздравляем, вы выиграли!"
    else
      puts "У вас осталось попыток: " + (7 - game.errors).to_s
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

  def print_viselitsa(errors)
    puts @status_image[errors]

  end

end
