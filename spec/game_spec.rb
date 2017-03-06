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
  it "prints out a logo and welcome message" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:super_logo)
    expect(ui).to receive(:welcome_player)
    game.greetings
    # require 'pry'
    # binding.pry
  end

  # Created mock Player and Computer to run their methods and get their (hardcoded) moves.
  # Then run 'result' method of real Game to test it works.
  # Ui's method 'computer' prints out an output when testing, though.
  it "returns result of game between player vs computer" do
    player = double("player")
    computer = double("computer")
    game = Game.new(ui, computer, player)
    expect(player).to receive(:player_move) {
      Rock.new
    }
    expect(computer).to receive(:move) {
      Scissors.new
    }
    expect(game.result).to eq("won")
  end

  it "prints out that player won" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:player_wins)
    verdict = "won"
    game.print_result(verdict)
  end

  it "prints out that player lost" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:player_loses)
    verdict = "lost"
    game.print_result(verdict)
  end

  it "prints out that the game is draw" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:nobody_wins)
    verdict = "draw"
    game.print_result(verdict)
  end

  xit "shows new game result until player wants to play" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:play_again) {"yes"}
    game.play_again?
  end

  it "says goodbye if player does no longer want to play" do
    ui = double("ui")
    game = Game.new(ui, computer, player)
    expect(ui).to receive(:play_again) {"no"}
    expect(ui).to receive(:say_goodbye)
    game.play_again?
  end

end
