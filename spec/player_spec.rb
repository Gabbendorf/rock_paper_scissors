require_relative '../lib/player'

RSpec.describe Player do

let(:player) {Player.new}
let(:output) {StringIO.new}
let(:input) {StringIO.new}
let(:ui) {Ui.new(input, output)}

  it "returns the move the player has input as a string" do
    input = StringIO.new("\n")
    ui = Ui.new(input, output)
    choice = ui.choice
    expect(player.ask_move).to eq(choice)
  end

end
