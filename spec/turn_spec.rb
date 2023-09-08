require './lib/cell'
require './lib/board'
require './lib/turn'

RSpec.describe "#Turn" do
  before(:each) do
    @board = Board.new
    @turn = Turn.new("Eric", @board)
  end

  it 'exists' do
    expect(@turn).to be_instance_of Turn
  end

  it 'can turn hold attributes' do
    expect(@turn.player).to eq("Eric")
    expect(@turn.board).to be_a(Board)
  end

  it 'can select a column' do 
    #require 'pry';binding.pry
    expect(@turn.player_turn(["A"])).to eq(["A"])
    expect(@turn.player_turn(['H'])).to eq("Input column A-G.")
  end

end