require_relative '../lib/computer'

RSpec.describe Computer do

  let(:computer) {Computer.new}

  it "returns a list of 3 moves" do
    expect(computer.moves.length).to eq(3)
  end

  # it "returns move 'rock' " do
  #   move = computer.moves[0]
  #   expect(computer.next_move).to eq(move)
  # end

  it "returns a random move from list as string" do
    move = computer.moves.sample
    expect(computer.next_move).to eq(move)
  end

end
