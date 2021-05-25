class Turn
  def initialize(player)
    current_question = Question.new
    puts "#{player.name}: #{current_question.ask_question}"
    @answer = gets.chomp.to_i

    if current_question.check_answer?(@answer)
      puts "#{player.name}: YES! You are correct"
    else
      player.decrease_life
      puts "#{player.name}: Seriously? No!"
    end
  end
end