require_relative '../lib/game'
require_relative '../lib/ui'

RSpec.describe Game do

  let(:ui) {Ui.new($stdin, $stdout)}
  let(:input) {StringIO.new}
  let(:output) {StringIO.new}
  let(:computer) {Computer.new}
  let(:player) {Player.new(ui)}

  # Testing interaction between Game and Ui:
  # need to create a mock Ui with method 'double' to test that Ui
  # 'super_logo' and 'welcome_player' methods are correctly run by Game
  # through method 'greetings'
  it "prints out a logo" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:super_logo)
    expect(ui).to receive(:welcome_player)
    game.greetings
    # require 'pry'
    # binding.pry
  end

  it "returns result of game between player vs computer" do
    player = double("player")
    computer = double("computer")
    #ui = instance_double("Ui")
    game = Game.new(ui, computer, player)
    expect(player).to receive(:player_move) {
      Rock.new
    }
    expect(computer).to receive(:move) {
      Scissors.new
    }
    expect(game.result).to eq("won")
  end

end
