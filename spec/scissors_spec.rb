require_relative '../lib/scissors'
require_relative '../lib/paper'
require_relative '../lib/rock'

RSpec.describe Scissors do

  let(:scissors) {Scissors.new}

  it "returns its name" do
    expect(scissors.name).to eq("scissors")
  end

  it "wins against paper" do
    paper = Paper.new
    expect(scissors.play_against(paper)).to eq("won")
  end

  it "loses against rock" do
    rock = Rock.new
    expect(scissors.play_against(rock)).to eq("lost")
  end

  it "is draw against scissors" do
    scissors_one = Scissors.new
    scissors_two = Scissors.new
    expect(scissors_one.play_against(scissors_two)).to eq("draw")
  end

end
