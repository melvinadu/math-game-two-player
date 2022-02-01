require './player'
require './question'

class Game

  attr_accessor :turn, :players, :player

  def initialize
    @turn = 1
    @players = [Player.new("Player 1"),Player.new("Player 2")]
    @player = @players[0]
    game_loop()
  end

  def game_loop

    while @players[0].lives > 0 && @players[1].lives > 0
      question = Question.new()
      puts "----- NEW TURN -----"
      puts "#{@player.name}: #{question.new_question}"
      if question.question_answer == gets.chomp.to_i
        puts "#{@player.name}: YES! You are correct."
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
        new_turn()
      else
        puts "#{@player.name}: Seriously? No!"
        @player.decrease_lives()
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
        new_turn()
      end
    end
    winner()
  end

  def new_turn
    if @turn == 1
      @turn = 2
      @player = @players[1]
    else
      @turn = 1
      @player = @players[0]
    end
  end

  def winner

    if players[0].lives > players[1].lives
      puts " #{players[0].name} wins with #{players[0].lives}/3 lives remaining"
    else 
      puts " #{players[1].name} wins with #{players[1].lives}/3 lives remaining"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
    
  end

end