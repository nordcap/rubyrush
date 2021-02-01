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

  def film
    @film
  end

  def film=(name)
    @film = name
  end

  def love_films
    puts "#{@first_name}"
    puts "с любимым фильмом: #{@film}"
  end
end
