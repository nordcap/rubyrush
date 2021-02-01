require_relative './films'
require_relative './people'

people1 = People.new("Сергей","Сергей",20)
people1.film="Челюсти"
people2 = People.new("Марина","Марина",36)
people2.film="Список Шиндлера"
people3 = People.new("Мадонна","Мадонна",55)
people3.film="Парк Юрского периода"


people1.love_films
people2.love_films
people3.love_films
