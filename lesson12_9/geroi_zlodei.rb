puts "Врага какого персонажа вы хотите узнать?"
geroi = STDIN.gets.encode("UTF-8").chomp
case geroi
when "batman", "Batman", "Бэтмен", "бэтмен"
    puts "Джокер"
when "Шерлок Холмс", "шерлок холмс"
    puts "Профессор Мариарти"
when "Буратино","буратино"
    puts "Карабас-Барабас"
when "Фродо Бэггинс", "фродо бэггинс"
    puts "Саурон"
when "Моцарт","моцарт"
    puts "Сальери"
else "Не удалось найти врага"
end