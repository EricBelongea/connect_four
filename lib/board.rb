require_relative 'cell'

class Board
  attr_accessor :board

  def initialize
    @board = default_board
  end

  def default_board
    board =[
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new],
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new],
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new],
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new],
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new],
      [cell.new, cell.new, cell.new, cell.new, cell.new, cell.new, cell.new]
    ]
    # puts "ABCDEFG"
    # puts board
  end
end


