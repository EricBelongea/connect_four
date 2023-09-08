require './lib/cell'
require './lib/board'

RSpec.describe "#Board" do
  before(:each) do
    @board = Board.new
  end
  it 'exists' do
    expect(@board).to be_instance_of Board
  end

  it 'will return the state' do
    
  end
end