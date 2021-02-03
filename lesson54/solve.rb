file_path = File.dirname(__FILE__ )
path = file_path + "/data/file.txt"

if File.exist?(path)
  f = File.open(path, "r")
  lines = f.readlines

  puts "Открыли файл: data/file.txt"
  puts "Всего строк: #{lines.size}"
  puts "Пустых строк: #{lines.count("\n")}"
  puts "Последние 5 строк файла:"
  for i in (1..5)
    puts lines.pop
  end

  f.close
else
  puts "Файл не найден"
end