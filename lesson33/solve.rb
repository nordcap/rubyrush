temp = 0
if ARGV[0] == nil
  puts "Какая сейчас температура?"
  temp = gets.to_i
else
  temp = ARGV[0].to_i
end

period_year = nil
if ARGV[1] == nil
  puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  period_year = gets.to_i
else
  period_year = ARGV[1].to_i
end

if ((period_year == 1 && temp >= 15 && temp <= 35) || (temp >= 22 && temp <= 35))
  puts "Скорее идите в парк, соловьи поют!"
else
  puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
end
