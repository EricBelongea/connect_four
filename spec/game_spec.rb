require 'simplecov'
SimpleCov.start
require './lib/game'

RSpec.describe "#Game" do
  before(:each) do
    @game = Game.new
    @board = Board.new
    @player = Player.new(@board)
  end

  it 'exists' do
    expect(@game).to be_instance_of Game
  end

  it 'can turn hold attributes' do
    expect(@game.start).to be nil
    expect(@game.finish).to be nil
  end

  it 'can select a column' do 
    expect(@board.valid_column("A")).to be true
    expect(@board.valid_column('H')).to be false
  end

  describe "#board integration" do
    it 'can display' do
      @board.display_board
      #Do you see me?
    end

    it 'will show the default at the beginning of each round' do
      expect(@board.default_board).to eq(@board.grid)
    end

    it 'can check for winner' do
      4.times { @board.drop_disc(0,'x') }
      expect(@board.check_winner).to eq('x')
    end

    it 'check if full' do
      expect(@board.check_full).to be false
    end

    it 'will know if board is full' do
      6.times { @board.drop_disc(0,'x') }
      6.times { @board.drop_disc(1,'x') }
      6.times { @board.drop_disc(2,'x') }
      6.times { @board.drop_disc(3,'x') }
      6.times { @board.drop_disc(4,'x') }
      6.times { @board.drop_disc(5,'x') }
      6.times { @board.drop_disc(6,'x') }
      
      expect(@board.check_full).to be true
    end
  end

  describe "#Player" do
    it 'can assign a name' do
      expect(@player.assign_player_name("Eric")).to eq(@player.name)
    end
  end

end