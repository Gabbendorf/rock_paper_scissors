require_relative '../lib/paper'
require_relative '../lib/rock'
require_relative '../lib/scissors'

RSpec.describe Paper do

  let(:paper) {Paper.new}

  it "returns its name" do
    expect(paper.name).to eq("paper")
  end

  it "wins against rock" do
    rock = Rock.new
    expect(paper.play_against(rock)).to eq("won")
  end

  it "loses against scissors" do
    scissors = Scissors.new
    expect(paper.play_against(scissors)).to eq("lost")
  end

  it "is draw against paper" do
    paper_one = Paper.new
    paper_two = Paper.new
    expect(paper_one.play_against(paper_two)).to eq("draw")
  end

end
