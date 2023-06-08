require_relative "methods"
regexp_string = random_regexp_string
puts "Придумайте слова"
puts regexp_string.gsub('.', "*")
puts "Для выхода введите x"
count = 0
loop do
    word = STDIN.gets.chomp
    if word.downcase == 'x'
        break
    end
    if word_exist?(word)
        if word =~ /#{regexp_string}/
            puts "Подходит"
            count+=1
        else
            puts "Не подходит"
        end
    end
end
puts "Игра закончена, счет: #{count}"