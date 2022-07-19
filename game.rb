require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def new_question
    question = Question.new
    puts "#{@player1.name}: What does #{question.num1} plus #{question.num2} equal?"
    question.ask
  end

  def start
    new_question
  end
end
