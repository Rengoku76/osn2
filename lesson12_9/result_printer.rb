class ResultPrinter
    def print_status(game)
        cls
        puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
        puts "Ошибки: #{game.bad_letters.join(", ").to_s}"
        print_viselitsa(game.errors)
        if game.status == -1
            puts "Вы проиграли :("
            puts "Загаданное слово было: " + game.letters.join("")
            elsif game.status == 1
                puts "Поздравляем, вы выиграли!"
            else
                puts "У вас осталось ошибок: " + (7 - game.errors).to_s
            end
        end
        def get_word_for_print(letters, good_letters)
            result = ""
            for item in letters do
                if good_letters.include?(item)
                    result += item + " "
                else
                    result += "__ "
                end
            end
            return result
        end
    def print_viselitsa(errors)
        case errors
        when 0
            puts "
              -------
              |/
              |
              |
              |
              |
              |
              |
              |
            __|________
            |         |
            "
        when 1
            puts "
              -------
              |/
              |     ( )
              |
              |
              |
              |
              |
              |
            __|________
            |         |
            "
        when 2
            puts "
              -------
              |/
              |     ( )
              |      |
              |
              |
              |
              |
              |
            __|________
            |         |
            "
        when 3
        puts "
          -------
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
        when 4
        puts "
          -------
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
        when 5
        puts "
          -------
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "
        when 6
        puts "
          -------
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      | 
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
      when 7
        puts "
          -------
          |/     |
          |     ( )
          |     _|_
          |    / | \\
          |      | 
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
    end
end
def cls
   system("clear") || system("cls")
end
end