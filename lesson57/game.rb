class Game
  def initialize(slovo)
    @letters = get_letters(slovo)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(slovo)
    if (slovo == nil || slovo == "")
      abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
    end
    slovo.split("")
  end

  def ask_next_letter
    puts "\nВведите следующую букву"
    letter = ""
    while letter == ""
      letter = STDIN.gets.chomp
    end
    next_step(letter)
  end

  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    #проверим, не повторяется ли пользователь,
    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end

    if @letters.include?(bukva)
      @good_letters << bukva
      if @good_letters.uniq.size == @letters.uniq.size
        @status = 1
      end
    else
      @bad_letters << bukva
      @errors += 1

      if @errors >= 7
        @status = -1
      end
    end
  end
  #getters
  def status
    @status
  end
  def errors
    @errors
  end
  def letters
    @letters
  end
  def good_letters
    @good_letters
  end
  def bad_letters
    @bad_letters
  end

end
