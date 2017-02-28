class Paper

  def name
    @name = "paper"
  end

  def play_against(move)
    if move.name == "rock"
      "won"
    elsif move.name == "scissors"
      "lost"
    else
      "draw"
    end
  end

end
