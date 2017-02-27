class Computer

  attr_reader :moves

  def initialize
    @moves = ["rock", "paper", "scissors"]
  end

  def next_move
    @moves.sample
  end

end
