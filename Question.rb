class Question
  
  def initialize
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
    @answer = @number_1 + @number_2
  end

  def ask_question
    "what does #{@number_1} plus #{@number_2} equal?"
  end

  def check_answer?(answer)
    answer == @answer
  end

end

#test:
# first = Question.new
# puts first.ask_question