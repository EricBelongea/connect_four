require_relative 'indexable'

class Computer
  include Indexable
  attr_reader :piece, :board

  def initialize(board)
    @piece = 'o'
    @board = board
  end

  def computer_turn(board)
    # puts "The computer will now make a turn."
    column = @board.columns.sample
    integer = index_column(column)
    until @board.valid_column(column) == true
      column = @board.columns.sample
    end
    integer = index_column(column)
    until @board.column_full(integer) == false
      column = @board.columns.sample
      integer = index_column(column)
    end
    board.drop_disc(integer, @piece)
  end
end