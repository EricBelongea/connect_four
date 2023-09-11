require './lib/cell'
require './lib/board'

RSpec.describe "#Board set up" do
  before(:each) do
    @board = Board.new
    @cell = Cell.new
  end
  it 'exists' do
    expect(@board).to be_instance_of Board
  end

  it 'has attributes/ visual test' do
    expect(@board.grid).to eq(@board.display_board)
    expect(@board.grid).to be_instance_of Array
    expect(@board.columns).to eq(["A", "B", "C", "D", "E", "F", "G"])
  end

  it "board class responds to display" do
    expect(@board.respond_to?('display_board')).to be true
  end

  # when column > 7 discs it should return false

  it 'can validate column' do
    expect(@board.valid_column('A')).to be true
    expect(@board.valid_column('H')).to be false
  end

  describe '#Placing Pieces' do

    it 'can detect piece on board' do
      @board.drop_disc(2, "x")
      expect(@board.grid.flatten.include?("x")).to be true
    end

    it 'can locate piece on board/ drop disc to bottom' do
      @board.drop_disc(2,'x')
      expect(@board.grid[5][2]).to eq('x')
    end
  end

  describe '#Board Fillage' do

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

    it 'will know if board is empty' do
      expect(@board.check_full).to be false
    end
  end
 
  describe '#win conditions' do

    it 'horizontal row victory x' do
      @board.drop_disc(0,'x')
      @board.drop_disc(1,'x')
      @board.drop_disc(2,'x')
      @board.drop_disc(3,'x')

      expect(@board.check_winner).to eq('x')
    end

    it 'horizontal failure' do
      @board.drop_disc(0,'x')
      @board.drop_disc(1,'x')
      @board.drop_disc(2,'x')

      expect(@board.check_winner).to be nil

      @board.drop_disc(4, 'x')
      expect(@board.check_winner).to be nil
      @board.drop_disc(3, 'o')
      expect(@board.check_winner).to be nil
    end

    it 'horizontal row victory o' do
      @board.drop_disc(3,'o')
      @board.drop_disc(4,'o')
      @board.drop_disc(5,'o')
      @board.drop_disc(6,'o')

      expect(@board.check_winner).to eq('o')
    end

    it 'vertical column victory x' do
      3.times { @board.drop_disc(0, 'x')}
      expect(@board.check_winner).to eq(nil)

      @board.drop_disc(0, 'x')
      expect(@board.check_winner).to eq('x')
    end

    it 'vertical column victory o' do
      3.times { @board.drop_disc(4, 'o')}
      expect(@board.check_winner).to eq(nil)

      @board.drop_disc(4, 'o')
      expect(@board.check_winner).to eq('o')
    end

    it 'diagional victory' do
      @board.drop_disc(0,'x')
      @board.drop_disc(1,'o')
      @board.drop_disc(1,'x')
      2.times { @board.drop_disc(2,'o') }
      @board.drop_disc(2,'x')
      3.times { @board.drop_disc(3,'o') }
      @board.drop_disc(3,'x')
      @board.display_board

      expect(@board.check_winner).to eq('x')
    end
  end
end