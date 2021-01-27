class BodyBuilder
  def initialize(biceps = 0, triceps = 0, deltovidka = 0)
    @biceps = biceps
    @triceps = triceps
    @deltovidka = deltovidka
  end

  def pump(name_muskul)
    case name_muskul
    when "biceps"
      @biceps += 1
    when "triceps"
      @triceps += 1
    when "deltovidka"
      @deltovidka += 1
    end
  end

  def show_muscles
    puts "Бицепсы: #{@biceps}"
    puts "Трицепсы: #{@triceps}"
    puts "Дельтовидка: #{@deltovidka}"
  end

end

bodybilder1 = BodyBuilder.new(4, 2, 1)
bodybilder2 = BodyBuilder.new(6, 5, 4)
bodybilder3 = BodyBuilder.new(7, 8, 5)

for i in (1..6)
  bodybilder1.pump("biceps")
  bodybilder2.pump("biceps")
  bodybilder3.pump("biceps")
end
for i in (1..8)
  bodybilder1.pump("triceps")
  bodybilder2.pump("triceps")
  bodybilder3.pump("triceps")
end

for i in (1..4)
  bodybilder1.pump("deltovidka")
  bodybilder2.pump("deltovidka")
  bodybilder3.pump("deltovidka")
end

puts "Первый бодибилдер:"
bodybilder1.show_muscles
puts "Второй бодибилдер:"
bodybilder2.show_muscles
puts "Третий бодибилдер:"
bodybilder3.show_muscles

