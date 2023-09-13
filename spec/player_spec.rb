require 'simplecov'
SimpleCov.start
require './lib/player'
require './lib/board'
require './lib/indexable'
include Indexable

RSpec.describe '#Player' do
  before(:each) do
    @board = Board.new
    @player = Player.new(@board)
  end
  it 'exists' do
    expect(@player).to be_instance_of Player
  end

  it 'has a piece to play with' do
    expect(@player.player_piece).to eq('x')
  end

  it 'will respond to method' do
    # require'pry';binding.pry
    expect(@player.respond_to?('player_turn')).to be true
  end

  it 'can assign a name' do
    @player.assign_player_name('Eric')
    expect(@player.name).to eq('Eric')
  end

  it 'has valid columns' do
    expect(@board.valid_column("A")).to be true
    expect(@board.valid_column("H")).to be false
  end

  it 'can index columns' do
    column = 'A'
    integer = index_column('A')
    expect(integer).to eq(0)
  end
end