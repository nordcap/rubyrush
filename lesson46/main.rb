class People
  def initialize(first_name, last_name)
    @first_name=first_name
    @last_name=last_name
  end
  def get_full_name
    puts "#{@first_name} #{@last_name}"
  end
end

puts "У нас есть три человека:"
people1 = People.new("Гаврила","Петрович")
people2 = People.new("Фёдор","Петрович")
people3 = People.new("Василий","Алибабаевич")

people1.get_full_name
people2.get_full_name
people3.get_full_name

