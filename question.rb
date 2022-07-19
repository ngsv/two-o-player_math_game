class Question
  attr_reader :num1, :num2, :user_response

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end


  # Ask for user input
  def ask
    @user_response = gets.chomp.to_i
  end


  # Check if the response is correct
  def correct?
    if user_response == num1 + num2
      return true
    else
      return false
    end
  end
end
