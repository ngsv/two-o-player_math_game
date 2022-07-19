require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @turn_count = 0
  end

  # Check whose turn it is
  def player?
    if @turn_count % 2 == 0
      return @player1
    else
      return @player2
    end
  end

  # Generates a new question
  def new_question
    if @turn_count != 0
      puts "----- NEW TURN -----"
    end

    @question = Question.new
    puts "#{player?.name}: What does #{@question.num1} plus #{@question.num2} equal?"
    @question.ask
  end

  # Check the response to the question asked
  def check_answer
    if @question.correct? == true
      puts "#{player?.name}: YES! You are correct."
    else
      puts "#{player?.name}: Seriously? No!"
      player?.decrease_life
    end
  end

  # Prints the lives remaining and updates the turn count
  def check_lives
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    @turn_count += 1
  end

  # Check who the winner is
  def winner?
    if @player1.alive?
      return @player1
    else
      return @player2
    end
  end


  def play
    # Keep playing while both players are alive
    while @player1.alive? && @player2.alive?
      new_question
      check_answer
      check_lives
    end

    if winner?.lives == 1
      puts "#{winner?.name} wins with #{winner?.lives} life remaining."
    else
      puts "#{winner?.name} wins with #{winner?.lives} lives remaining."
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end
