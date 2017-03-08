require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class Computer

  attr_reader :moves, :points

  def initialize
    @moves = [Rock.new, Paper.new, Scissors.new]
    @points = 0
  end

  def move
    @moves.sample
  end

  def add_point
    @points += 1
  end
end
