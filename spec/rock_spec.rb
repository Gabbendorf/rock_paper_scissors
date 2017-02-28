require_relative '../lib/rock'
require_relative '../lib/scissors'
require_relative '../lib/paper'

RSpec.describe Rock do

  let(:rock) {Rock.new}

  it "returns its name" do
    expect(rock.name).to eq("rock")
  end

  it "wins against scissors" do
    scissors = Scissors.new
    expect(rock.play_against(scissors)).to eq("won")
  end

  it "loses against paper" do
    paper = Paper.new
    expect(rock.play_against(paper)).to eq("lost")
  end

  it "is draw against rock" do
    rock_one = Rock.new
    rock_two = Rock.new
    expect(rock_one.play_against(rock_two)).to eq("draw")
  end

end
