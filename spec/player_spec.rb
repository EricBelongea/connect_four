require 'simplecov'
SimpleCov.start
require './lib/player'
require './lib/board'

RSpec.describe '#Player' do
  before(:each) do
    @board = Board.new
   @player = Player.new(@board)
  end
  it 'exists' do
    expect(@player).to be_instance_of Player
  end

  it 'has a piece to play with' do
    # expect(@player.name).to eq('Eric')
    expect(@player.player_piece).to eq('x')
  end

  it 'will respond to method' do
    expect(@player.respond_to?('player_turn')).to be true
    # I wanna find a way to test if the method recieves user input (I know it does in pry)
  end
end