file = File.new("./file.txt","a:UTF-8")
file.print("Строка для записи в файл\n\r")
file.close
file = File.new("./file.txt","a:UTF-8")
file.print("Ещё одна строка\n\r")
file.close