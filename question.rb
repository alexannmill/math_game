class Question

  def initialize()
    num1 = rand(50)
    num2 = rand(50)
    @answer = num1 + num2
    @question = "Q: What is #{num1} + #{num2}?"
    puts @question
    @guess = gets.chomp
  end
  

  def validation ()
    result = nil
    if @guess == @answer.to_s
      result = true
      puts "Correct!"
    else
      result = false 
    puts "Incorrect!"
    end
    result
  end


end


