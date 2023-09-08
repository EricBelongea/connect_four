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
    #@turn.ask_for_move
    expect(@turn.player_turn(["A"])).to eq(["A"])
    expect(@turn.player_turn(['H'])).to eq("Input column A-G.")
  end

  xit 'can ask for move' do
    #@turn.ask_for_move
    #require 'pry';binding.pry
    #expect(player_choice).to be_a(array)
  end

end