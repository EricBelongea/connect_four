require_relative 'player'
require_relative 'board'

class Computer
  attr_reader :computer_piece

  def initialize
    @computer_piece = 'o'
  end

  def computer_turn(board)
    puts "The computer will make their turn"
    cloumn = board.columns.sample
    integer = player.index_column(column)
    if valid_column(column) == true
      board.drop_piece(column, @computer_piece)
    end
  end
end