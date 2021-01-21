puts "Какой длины будет массив случайных чисел?"
n = gets.to_i
i = 0
arr = []
while i < n
  arr.push(Random.rand(0..100))
  i += 1
end
puts arr.to_s

max = 0
for elem in arr
  max = elem if elem >= max
end
puts "Самое большое число: #{max}"
