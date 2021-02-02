path = File.dirname(__FILE__)
current_file = path + "/quotes.txt"

if File.exist?(current_file)
  f = File.open(current_file, 'r')
  lines = f.readlines
  puts lines.sample
  f.close
else
  puts "Файл не найден!"
end