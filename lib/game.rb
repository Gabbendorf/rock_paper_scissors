require_relative 'ui'
require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :ui, :computer, :player

  def initialize
    @ui = Ui.new($stdin, $stdout)
    @computer = Computer.new
    @player = Player.new(ui)
  end

  def greetings
    @ui.super_logo
    @ui.welcome_player
  end

  def rules
    player_move = @player.player_move
    computer_move = @computer.move
    @ui.computer(computer_move)
    result = player_move.play_against(computer_move)
    if result == "won"
      @ui.player_wins
    elsif result == "lost"
      @ui.player_loses
    elsif result == "draw"
      @ui.nobody_wins
    end
  end

  def play_again?
    reply = @ui.play_again
      while reply == "yes"
        rules
        reply = @ui.play_again
      end
    @ui.say_goodbye
  end

  def start
    greetings
    rules
    play_again?
  end

end
