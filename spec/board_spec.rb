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

  it 'board is made of cells' do
    expect(@board.default_board[0][0].class).to eq(Cell)
  end

  it "will display a board made of '.'" do
    #require'pry';binding.pry
    expect(@board.respond_to?('display_board')).to be true
    expect(@board.display_board[0][0].state).to eq('.')

    # expect(@board.display_board).to eq("
    #   ABCDEFG
    #   .......
    #   .......
    #   .......
    #   .......
    #   .......
    #   .......
    #   ")
  end
end