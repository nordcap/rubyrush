path = File.dirname(__FILE__)
path_answers = path + "/answers.txt"
path_questions = path + "/questions.txt"

if File.exist?(path_answers) && File.exist?(path_questions)
  q = File.open(path_questions, 'r')
  a=File.open(path_answers, 'r')

  arr_questions = q.readlines
  arr_answers = a.readlines
  puts arr_questions.to_s
  puts arr_answers.to_s

  i=0
  right_answer=0
  arr_questions.each do |question|
    puts question
    answer  = gets.chomp
    if answer == arr_answers[i].chomp
      puts "Верный ответ!"
      right_answer+=1
    else
      puts "Неправильно. Правильный ответ: #{arr_answers[i].chomp}"
    end
    i+=1
  end
  puts "У вас #{right_answer} правильных ответов из #{arr_questions.size}"
  q.close
  a.close
else
  puts "Файлов вопросов и ответов не существует"
end