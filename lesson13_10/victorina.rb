questions_path = "data/questions.txt"
answers_path = "data/answers.txt"
questions_file = File.new(questions_path, "r:UTF-8")
questions = questions_file.readlines
questions_file.close
answers_file = File.new(answers_path, "r:UTF-8")
answers = answers_file.readlines
answers_file.close
correct_answers = 0
current_index = 0
puts "Мини-викторина. Ответьте на вопросы."
while current_index < questions.size
    puts questions[current_index]
    user_answer = STDIN.gets.encode("UTF-8").chomp
    correct_answer = answers[current_index].chomp
    if user_answer == correct_answer
        puts "Верный ответ!"
        correct_answers +=1
    else
        puts "Неправильно. Правильный ответ: " + correct_answer
    end
    current_index +=1
end
puts
puts "Правильных ответов: #{correct_answers} из #{questions.size}"