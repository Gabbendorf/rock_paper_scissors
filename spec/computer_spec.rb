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

  it "returns zero points" do
    expect(computer.points).to eq(0)
  end

  it "adds 1 point" do
    computer.add_point
    expect(computer.points).to eq(1)
  end

  it "adds 2 points" do
    computer.add_point
    computer.add_point
    expect(computer.points).to eq(2)
  end

end
