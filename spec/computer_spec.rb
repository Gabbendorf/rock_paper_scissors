require_relative '../lib/computer'

RSpec.describe Computer do

  let(:computer) {Computer.new}

  it "returns a list of 3 moves" do
    expect(computer.moves.length).to eq(3)
  end

  it "returns a random move included in the list" do
    move = computer.move
    possible_moves = ["rock", "scissors", "paper"]
    expect(possible_moves.include?(move.name)).to eq(true)
  end

end
