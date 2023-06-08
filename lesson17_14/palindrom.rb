puts "Введите строку, для проверки на полиндромность"
original_string = STDIN.gets.encode("UTF-8").chomp
string = original_string.delete(' ,.!?;:-').downcase
reverse_string = string.reverse
if reverse_string == string
    puts "Это палиндром"
else
    puts "Это не палиндром"
end