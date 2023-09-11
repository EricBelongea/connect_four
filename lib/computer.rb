require_relative 'indexable'

class Computer
  include Indexable
  attr_reader :piece

  def initialize(board)
    @piece = 'o'
    @board = board
  end

  def computer_turn(board)
    puts "The computer will now make a turn."
    column = @board.columns.sample
    integer = index_column(column)
    if @board.valid_column(column) == true
      board.drop_disc(integer, @piece)
    end
  end
end