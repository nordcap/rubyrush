require_relative './game'
require_relative './result_printer'
require_relative './word_reader'

reader = WordReader.new
printer = ResultPrinter.new

current_path = File.dirname(__FILE__ )

slovo = reader.read_from_file(current_path + "/data/words.txt")

game = Game.new(slovo)



puts "Игра виселица. Версия 3. (с) rubyrush.ru\n\n"
sleep 1

while game.status==0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
