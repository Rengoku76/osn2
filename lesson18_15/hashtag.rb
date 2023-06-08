puts "Введите строку с хештегами:"
string = STDIN.gets.chomp
hashtag_regexp = /#[[:word:]-]+/
hashtags = string.scan(hashtag_regexp)
puts "Хештеги: " +hashtags.join(', ')