class Game 
  puts "newgame"
  attr_accessor :turn, :score
  def initialize()
    @player1 = Player.new()
    @player2 = Player.new()
    @turn = @player1.id
    @max_turns = 20
  end
  
  def game_loop
    loop do
      if @max_turns < 1
        puts "Its a tie!"
        break
      end
      puts "Player#{@turn} turn: "
      question1 = Question.new()
      result = question1.validation()
      if(!result)
        if(turn == 1) 
          @player1.loose_life()
          if @player1.life == 0
            puts "Player#{@player2.id} is the winner!"
            break
          end
        else
          @player2.loose_life()
          if @player2.life == 0
            puts "Player#{@player1.id} is the winner!"
            break
          end
        end
      end
      if (@player1.life > 0 || @player2.life > 0)
        score_update()
        switch_turn()
      else
        puts "Game Over!"
        break
      end
    end
  end

  def switch_turn
    @max_turns = @max_turns - 1
    if(@turn == @player1.id)
      @turn = @player2.id    
    else
      @turn = @player1.id
    end
  end

  def score_update
    @score = "Score--- P1: #{@player1.life} vs P2: #{@player2.life} ----"
    puts @score
  end

end