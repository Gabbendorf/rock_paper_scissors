


if player_move == Rock.new
  result = rock.play_against(computer_move)
elsif player_move == Paper.new
  result = paper.play_againstc(computer_move)
elsif player_move == Scissors.new
  result = scissors.play_against(computer_move)
end
  if result == "won"
    ui.player_wins
  elsif result == "lost"
    ui.player.loses
  elsif  result == "draw"
    ui.nobody_wins
  end
