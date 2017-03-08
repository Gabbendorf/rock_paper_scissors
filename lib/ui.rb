class Ui

  LOGO = %q!
  (                   (                         (
)\ )            )   )\ )                      )\ )
(()/(         ( /(  (()/(   )         (  (    (()/(    (            (
/(_))(    (  )\())  /(_)| /( `  )   ))\ )(    /(_)) ( )\ (  (   (  )(  (
(_))  )\   )\((_)\  (_)) )(_))/(/(  /((_|()\  (_))   )((_))\ )\  )\(()\ )\
| _ \((_) ((_) |(_) | _ ((_)_((_)_\(_))  ((_) / __| ((_|_|(_|(_)((_)((_|(_)
|   / _ \/ _|| / /  |  _/ _` | '_ \) -_)| '_| \__ \/ _|| (_-<_-< _ \ '_(_-<
|_|_\___/\__||_\_\  |_| \__,_| .__/\___||_|   |___/\__||_/__/__|___/_| /__/
                            |_|
 !

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def super_logo
    @stdout.puts LOGO
  end

  def welcome_player
    @stdout.puts "Welcome to Rock-Paper-Scissors!"
    @stdout.puts "Are you ready to play??"
    @stdout.puts ""
  end

  def choice
    @stdout.puts "Make your move: rock, paper or scissors?"
    @stdin.gets.chomp
  end

  def computer(move)
    @stdout.puts "Computer played: #{move.class.name.downcase}"
  end

  def player_wins
    @stdout.puts "YOU WON! Congratulations!"
  end

  def player_loses
    @stdout.puts "YOU LOST! What a shame."
  end

  def nobody_wins
    @stdout.puts "DRAW! Nobody wins."
  end

  def play_again
    @stdout.puts "Do you want to play again?"
    @stdin.gets.chomp
  end

  def print_scores(player, computer)
    if player.points != 1
      @stdout.puts "Player won #{(player.points).to_s} times."
    else
      @stdout.puts "Player won #{(player.points).to_s} time."
    end
    if computer.points != 1
      @stdout.puts "Computer won #{(computer.points).to_s} times."
    else
      @stdout.puts "Computer won #{(computer.points).to_s} time."
    end
  end

  def player_is_the_winner
  end

  def computer_is_the_winner
  end

  def say_goodbye
    @stdout.puts "I hope to see you again soon!"
  end

end

#userInterface = Ui.new(:broken_pipe, :testing_pipe)
#userInterface.welcome_user   -->> message sent to test

#Test pseudocode
#---------------------------------------------
# create user interface
# send welcome message to the output pipe provided
# check that pipe provided has the expected message
