class Scissors

  def name
    @name = "scissors"
  end

  def play_against(move)
    if move.name == "paper"
      "won"
    elsif move.name == "rock"
      "lost"
    else
      "draw"
    end
  end

end
