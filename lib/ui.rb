class Ui

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def welcome_player
    @stdout.puts "WELCOME TO ROCK-PAPER-SCISSORS!"
  end

  def choice
    @stdout.puts "Make your first move: rock, paper or scissors?"
    @stdin.gets
  end

  def computer
    @stdout.puts "Computer played:"
  end

  def winner
    @stdout.puts "YOU WON! Congratulations!"
  end

  def loser
    @stdout.puts "YOU LOST! What a shame."
  end

  def draw
    @stdout.puts "DRAW! Nobody wins."
  end

  def play_again
    @stdout.puts "Do you want to play again?"
    @stdin.gets
  end

end

#userInterface = Ui.new(:broken_pipe, :testing_pipe)
#userInterface.welcome_user   -->> message sent to test

#Test pseudocode
#---------------------------------------------
# create user interface
# send welcome message to the output pipe provided
# check that pipe provided has the expected message
