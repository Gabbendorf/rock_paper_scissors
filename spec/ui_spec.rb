require_relative '../lib/ui'

RSpec.describe Ui do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:ui) {Ui.new(input, output)}

  # let(:pipe_out) {MyOutputPipe.new}
  # let(:ui) {Ui.new(input, output)}

  it "says hi" do
    ui = Ui.new(input, output)
    ui.welcome_player
    expect(output.string).to include("Welcome to Rock-Paper-Scissors!")
  end

  it "gives the user all possible game options" do
    input = StringIO.new("\n")
    ui = Ui.new(input, output)
    ui.choice
    expect(output.string).to include
    ("Make your first choice: rock, paper or scissors?\n")
  end

#
#   it "says hi" do
#     ui = Ui.new("double_pipe_in", pipe_out)
#     ui.welcome_user
#     expect(pipe_out.get_contents).to include("Welcome to Rock-Paper-Scissors!")
#   end
#
# end
# #
# #
# class MyOutputPipe
#   def initialize
#     @contents = ""
#   end
#
#   def puts message
#     @contents += message
#   end
#
#   def get_contents
#     @contents
#   end
end
