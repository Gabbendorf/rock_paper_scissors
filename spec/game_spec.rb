require_relative '../lib/game'

RSpec.describe Game do

  let(:game) {Game.new}
  # let(:player) {Player.new(ui)}
  # let(:computer) {Computer.new}
  # let(:ui) {Ui.new(input, output)}
  # let(:input) {StringIO.new}
  # let(:output) {StringIO.new}

  it "gives result 'won' if player's move wins" do
    player_move = Paper.new
    computer_move = Rock.new
    result = player_move.play_against(computer_move)
    expect(result).to eq("won")
  end

  it "gives result 'lost' if player's move wins" do
    player_move = Scissors.new
    computer_move = Rock.new
    result = player_move.play_against(computer_move)
    expect(result).to eq("lost")
  end

  it "gives result 'draw' if player's move wins" do
    player_move = Rock.new
    computer_move = Rock.new
    result = player_move.play_against(computer_move)
    expect(result).to eq("draw")
  end

end
