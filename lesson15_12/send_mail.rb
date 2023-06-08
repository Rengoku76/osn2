require 'pony'
require 'io/console'
my_mail = 'my_mail@mail.ru'
puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp
puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp
puts"Какая тема вашего письма?"
subject = STDIN.gets.chomp.encode("UTF-8")
puts "Что написать в письме?"
body = STDIN.gets.chomp.encode("UTF-8")
Pony.mail({
    :subject => subject,
    :body => body,
    :to => send_to,
    :from => my_mail,
    :via => :smtp,
    :via_options => {
        :address => 'smtp.mail.ru',
        :port => '465',
        :tls => true,
        :user_name => my_mail,
        :password => password,
        :authentication => :plain
    }
})