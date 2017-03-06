require_relative 'ui'
require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :ui, :computer, :player

  def initialize(ui, computer, player)
    @ui = ui
    @computer = computer
    @player = player
  end

  def greetings
    @ui.super_logo
    @ui.welcome_player
  end

  def result
    player_move = @player.player_move
    computer_move = @computer.move
    @ui.computer(computer_move)
    player_move.play_against(computer_move)
  end

  def print_result(verdict)
    if verdict == "won"
      @ui.player_wins
    elsif verdict == "lost"
      @ui.player_loses
    elsif verdict == "draw"
      @ui.nobody_wins
    end
  end

  def play_again?
    reply = @ui.play_again
      while reply == "yes"
        print_result(result)
        reply = @ui.play_again
      end
    @ui.say_goodbye
  end

  def start
    greetings
    print_result(result)
    play_again?
  end

end
