email = /^[a-z\d_+.\-]+@[a-z\d-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
puts "Введите email:"
user_input = gets.encode("UTF-8").chomp
if user_input.match(email)
    puts "Спасибо!"
else
    puts "Это не email"
end