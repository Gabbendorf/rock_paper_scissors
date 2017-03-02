require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class Computer

  attr_reader :moves

  def initialize
    @moves = [Rock.new, Paper.new, Scissors.new]
  end

  def move
    @moves.sample
  end

  def won_games
    []
  end

end
