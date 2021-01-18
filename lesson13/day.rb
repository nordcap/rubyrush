time = Time.new
d = time.wday
if d == 0 || d == 6
  puts "Сегодня выходной!"
else
  puts "Сегодня будний день, за работу!"
end
