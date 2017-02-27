class Ui

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def welcome_player
    @stdout.puts "Welcome to Rock-Paper-Scissors!"
  end

  def choice
    @stdout.puts "Make your first choice: rock, paper or scissors?"
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
