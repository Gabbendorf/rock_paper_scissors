require_relative 'game'

ui = Ui.new($stdin, $stdout)
computer = Computer.new
player = Player.new(ui)
game = Game.new(ui, computer, player)

game.start
