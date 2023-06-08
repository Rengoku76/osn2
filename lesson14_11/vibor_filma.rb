puts "Сегодня вам прилагается к просмотру фильм:"
file_path = "data/movies.txt"
if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines
    f.close
    number = rand(lines.length)
    if number % 2 == 1
        number -=1
    end
    puts lines[number]
    puts lines[number + 1]
else
    puts "Файл не найден"
end