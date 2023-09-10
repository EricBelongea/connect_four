require './lib/cell'
require './lib/board'

RSpec.describe "#Board" do
  before(:each) do
    @board = Board.new
    @cell = Cell.new
  end
  it 'exists' do
    expect(@board).to be_instance_of Board
  end

  it "board class responds to display" do
    #require'pry';binding.pry
    expect(@board.respond_to?('display_board')).to be true
  end

  it 'visual test to see board' do
    # Works best with (rspec spec/board_spec ) -fd
    @board.display_board
  end
end