class People
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def get_full_name
    if self.is_old?
      puts "#{@first_name} #{@last_name}"
      puts "И ему #{@age} — пожилой"
    else
      puts "#{@first_name}"
      puts "И ему #{@age} — молодой"
    end
  end

  def is_old?
    @age > 60
  end
end

puts "У нас есть три человека:"
people1 = People.new("Гаврила", "Петрович", age = 62)
people2 = People.new("Фёдор", "Петрович", age = 42)
people3 = People.new("Василий", "Алибабаевич", age = 50)

people1.get_full_name
people2.get_full_name
people3.get_full_name


