require_relative '../lib/ui'
require_relative '../lib/computer'
require_relative '../lib/player'

RSpec.describe Ui do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:ui) {Ui.new(input, output)}
  let(:computer) {Computer.new}
  let(:player) {Player.new(ui)}

  # For testing constant LOGO, I've created a mock output with method 'double'
  # and expected this to receive a method 'puts' with an argument that is the constant of the Ui
  it "prints a logo" do
    output = double("output")
    ui = Ui.new(input, output)
    expect(output).to receive(:puts).with(Ui::LOGO)
    ui.super_logo
  end

  it "says hi" do
    ui = Ui.new(input, output)
    ui.welcome_player
    expect(output.string).to include("Welcome to Rock-Paper-Scissors!")
    expect(output.string).to include("Are you ready to play??")
    expect(output.string).to include("")
  end

  it "gives the user all possible game options" do
    input = StringIO.new("\n")
    ui = Ui.new(input, output)
    ui.choice
    expect(output.string).to include
    ("Make your first move: rock, paper or scissors?\n")
  end

  it "reveals the move of the computer" do
    ui = Ui.new(input, output)
    ui.computer(computer)
    expect(output.string).to include("Computer played:")
  end

  it "says that player won" do
    ui = Ui.new(input, output)
    ui.player_wins
    expect(output.string).to include("YOU WON! Congratulations!")
  end

  it "says that player lost" do
    ui = Ui.new(input, output)
    ui.player_loses
    expect(output.string).to include("YOU LOST! What a shame.")
  end

  it "says 2 players draw" do
    ui = Ui.new(input, output)
    ui.nobody_wins
    expect(output.string).to include("DRAW! Nobody wins.")
  end

  it "asks the player to play again" do
    input = StringIO.new("\n")
    ui = Ui.new(input, output)
    ui.play_again
    expect(output.string).to include("Do you want to play again?")
  end

  it "prints out numbers of both computer's and player's won games" do
      ui = Ui.new(input, output)
      ui.print_scores(player, computer)
      expect(output.string).to include("Player won #{player.points} times.")
      # expect(output.string).to include("Player won #{(player.points).to_s} time.")
      expect(output.string).to include("Computer won #{computer.points} times.")
      # expect(output.string).to include("Computer won #{computer.points} time.")
  end

  it "says goodbye" do
    ui = Ui.new(input, output)
    ui.say_goodbye
    expect(output.string).to include("I hope to see you again soon!")
  end

#  --> Pairing with Andrea:

  # let(:pipe_out) {MyOutputPipe.new}
  # let(:ui) {Ui.new(input, output)}

#   it "says hi" do
#     ui = Ui.new("double_pipe_in", pipe_out)
#     ui.welcome_user
#     expect(pipe_out.get_contents).to include("Welcome to Rock-Paper-Scissors!")
#   end
#
# end
# #
# # --> creating a customised 'StringIO' class
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
