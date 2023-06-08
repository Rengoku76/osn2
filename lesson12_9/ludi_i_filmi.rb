require_relative "film2"
require_relative "person"
person1 = Person.new("Сергей")
person2 = Person.new("Марина")
person3 = Person.new("Мадонна")

person1.film2 = Film.new("Челюсти")
person2.film2 = Film.new("Список Шиндлера")
person3.film2 = Film.new("Парк Юрского периода")

puts person1.full_name
puts "с любимым фильмом: " + person1.film2.film_name
puts person2.full_name
puts "с любимым фильмом: " + person2.film2.film_name
puts person3.full_name
puts "с любимым фильмом: " + person3.film2.film_name
