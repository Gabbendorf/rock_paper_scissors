class Rock

  def name
    @name = "rock"
  end

  def play_against(move)
    if move.name == "scissors"
      "won"
    elsif move.name == "paper"
      "lost"
    else
      "draw"
    end
  end

end
