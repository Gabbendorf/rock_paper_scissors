require_relative 'ui'
require_relative 'player'

ui = Ui.new($stdin, $stdout)
# computer = Computer.new
player = Player.new
#
# ui.welcome_player
#
# player_move = player.ask_move
# computer_move = computer.next_move
#
# result = player_move.play_against(computer_move)
# ui.show_result(result)

ui.welcome_player
ui.choice
player.ask_move
