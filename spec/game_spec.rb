require_relative '../lib/game'

RSpec.describe Game do

  # let(:game) {Game.new}
  # let(:player) {Player.new(ui)}
  # let(:computer) {Computer.new}
  let(:input) {StringIO.new}
  let(:output) {StringIO.new}

  # Testing interaction between Game and Ui:
  # need to create a mock Ui with method 'double' to test that Ui
  # 'super_logo' and 'welcome_player' methods are correctly run by Game
  # through method 'greetings'
  it "prints out a logo" do
    ui = double("ui")
    game = Game.new(ui)
    expect(ui).to receive(:super_logo)
    expect(ui).to receive(:welcome_player)
    game.greetings
    # require 'pry'
    # binding.pry
  end

  xit "it is true if player's reply is yes" do
    reply = "yes"
    expect(game.play_again?).to eq()
  end

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
