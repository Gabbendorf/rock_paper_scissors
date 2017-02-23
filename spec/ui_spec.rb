require_relative '../lib/ui'

RSpec.describe Ui do

  let(:output) {StringIO.new}
  let(:input) {StringIO.new}
  let(:ui) {Ui.new(input, output)}

  def set_up_ui(string)
    input = StringIO.new(string)
    ui = Ui.new(input, output)
  end

  end



end
