require_relative 'ui'

class Player

  attr_reader :ui

  def initialize
    @ui = ui
  end

  def ask_move
    @ui.choice
  end

end
