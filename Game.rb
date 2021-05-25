require './Player'
require './Question'

class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @player1_turn = true
  end

  def play
    while !game_over?
      if @player1_turn
        Turn.new(@player_1)
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3 \n ----- NEW TURN -----"
        @player1_turn = false
      else
        Turn.new(@player_2)
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3 \n ----- NEW TURN -----"
        @player1_turn = true
      end
    end
  end

  def game_over?
  if (@player_1.lives <= 0)
    @player_1.end = true
    puts "Player 2 wins with a score of #{@player_2.lives}/3 \n ----- GAME OVER -----"
  end
  if (@player_2.lives <= 0)
    @player_2.end = true
    puts "Player 1 wins with a score of #{@player_1.lives}/3 \n ----- GAME OVER -----"
  end
  if @player_1.end || @player_2.end
    true
  else
    false
  end
end

end
