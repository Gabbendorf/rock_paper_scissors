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

  def starts
    @ui.super_logo
    @ui.welcome_player
    continue = true
    while continue
      player_move = @player.player_move
      computer_move = @computer.move
      @ui.computer(computer_move)
      result = player_move.play_against(computer_move)
      if result == "won"
        ui.player_wins
      elsif result == "lost"
        ui.player_loses
      elsif result == "draw"
        ui.nobody_wins
      end
      reply = @ui.play_again
      if reply != "yes"
        @ui.say_goodbye
        continue = false
      end
    end
  end

end
