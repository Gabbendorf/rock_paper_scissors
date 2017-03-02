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

  def add_to_list
    1
  end

end
