require_relative "film"
puts "Фильмы какого режиссёра вы хотите посмотреть?"
rejiser = STDIN.gets.encode("UTF-8").chomp
films = []
while films.size < 3
    puts "Какой-нибудь его хороший фильм?"
    film_name = STDIN.gets.encode("UTF-8").chomp
    film = Film.new(film_name,rejiser)
    films << film
end
film = films.sample
puts "И сегодня вечером рекомендую посмотреть: #{film.film_name}"
puts "Режиссера: #{film.rejiser}"