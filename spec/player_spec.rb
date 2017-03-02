require_relative '../lib/player'

RSpec.describe Player do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:ui) {Ui.new(input, output)}
  let(:player) {Player.new(ui)}

  it "returns rock if the player has input rock" do
    input = StringIO.new("rock\n")
    ui = Ui.new(input, output)
    player = Player.new(ui)
    move = player.player_move
    expect(move.class.name).to eq("Rock")
  end

  it "returns scissors if the player has input scissors" do
    input = StringIO.new("scissors\n")
    ui = Ui.new(input, output)
    player = Player.new(ui)
    move = player.player_move
    expect(move.class.name).to eq("Scissors")
  end

  it "returns paper if the player has input paper" do
    input = StringIO.new("paper\n")
    ui = Ui.new(input, output)
    player = Player.new(ui)
    move = player.player_move
    expect(move.class.name).to eq("Paper")
  end

  it "returns an empty list of won games" do
    expect(player.won_games.length).to eq(0)
  end

end
