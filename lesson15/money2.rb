r = Random.rand(0..1)
h = Random.rand(0..9)
if h == 0
  puts "Монета встала на ребро"
else
  if r == 0
    puts "Выпал орел"
  else
    puts "Выпала решка"
  end
end

