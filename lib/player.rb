require_relative 'ui'
require_relative 'rock'
require_relative 'scissors'
require_relative 'paper'

class Player

  attr_reader :ui, :points

  def initialize(ui)
    @ui = ui
    @points = 0
  end

  def player_move
    player_choice = @ui.choice
    if player_choice == "rock"
      return Rock.new
    elsif player_choice == "scissors"
      return Scissors.new
    elsif player_choice == "paper"
      return Paper.new
    end
  end

  def add_point
    @points += 1
  end

end
