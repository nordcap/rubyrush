=begin
Бумага побеждает камень («бумага обёртывает камень»).
  Камень побеждает ножницы («камень затупляет или ломает ножницы»).
    Ножницы побеждают бумагу («ножницы разрезают бумагу»).
=end
arr = ["камень","ножницы", "бумага"]
comp = Random.rand(0..2)
puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
man = gets.to_i

puts "Вы выбрали: #{arr[man]}"
puts "Компьютер выбрал: #{arr[comp]}"
#0 - камень
# 1 - ножницы
# 2 - бумага
if comp == man
  puts "Ничья"
else
  if (comp == 2 && man == 0) || (comp==0 && man==1) || (comp==1 && man==2)
    puts "Победил Компьютер"
  else
    puts "Победили ВЫ"
  end
end

