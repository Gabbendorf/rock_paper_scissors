require_relative 'game'
require_relative 'ui'

ui = Ui.new($stdin, $stdout)
game = Game.new(ui)
game.start
