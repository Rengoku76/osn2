puts 'Первое число:'
number1 = STDIN.gets.encode.chomp.to_f
puts 'Второе число:'
number2 = STDIN.gets.encode.chomp.to_f
puts 'Выберите операцию (+ - * /)'
operation = STDIN.gets.chomp
puts 'Результат:'
case operation
when '+'
    puts number1 + number2
when '-'
    puts number1 - number2
when '*'
    puts number1 * number2
when '/'
    puts number1 / number2
else
   puts 'Нет такой операции'
end