puts "Введите N"
n = gets.to_i
i=1
arr=[]
sum=0
while i<=7
  sum +=i
  arr.push(i)
  i+=1

end
puts arr.to_s
puts "Сумма чисел: #{sum}"
