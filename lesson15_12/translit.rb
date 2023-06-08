require 'cyrillizer'
Cyrillizer.language = "russian"
puts 'Введите фразу для транслитерации'
string = gets.encode('UTF-8').chomp
string_lat = string.to_lat
if string == string_lat
    puts string.to_cyr
else
    puts string_lat
end