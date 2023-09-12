require './lib/computer'
require './lib/board'

RSpec.describe '#computer' do
  before(:each) do
    @board = Board.new
    @computer = Computer.new(@board)
  end
  it 'exists' do
    expect(@computer).to be_instance_of Computer
  end

  it 'stores attributes' do
    expect(@computer.piece).to eq('o')
  end

  it 'responds to method' do
    expect(@computer.respond_to?('computer_turn')).to be true
  end

  it 'can select a random column' do
    column = @board.columns.sample
    puts column
    expect(@board.columns.include?(column)).to be true
    
    column = @board.columns.sample
    puts column
    expect(@board.columns.include?(column)).to be true
    
    column = @board.columns.sample
    puts column
    expect(@board.columns.include?(column)).to be true
  end
end