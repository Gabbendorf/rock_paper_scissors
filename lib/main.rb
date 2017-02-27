require_relative 'ui'

ui = Ui.new($stdin, $stdout)
computer = Computer.new
player = Player.new(ui)

ui.welcome_player

player_move = player.ask_move
computer_move = computer.next_move

result = player_move.play_against(computer_move)
ui.show_result(result)
