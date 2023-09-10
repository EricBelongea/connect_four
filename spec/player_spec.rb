require './lib/player'
require './lib/board'

RSpec.describe '#Player' do
  before(:each) do
   @player = Player.new('Eric')
  end
  it 'exists' do
    expect(@player).to be_instance_of Player
  end

  it 'has attributes' do
    expect(@player.name).to eq('Eric')
    expect(@player.player_piece).to eq('x')
  end

  it 'will respond to method' do
    expect(@player.respond_to?('player_turn')).to be true
    # I wanna find a way to test if the method recieves user input (I know it does in pry)
  end
end