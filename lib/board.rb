require_relative 'cell'

class Board
  attr_accessor :board

  def initialize
    @board = default_board
  end

  def default_board
    board = [
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new],
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new],
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new],
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new],
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new],
      [Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new, Cell.new]
    ]
  end

  
  def display_board
    puts "ABCDEFG"
    @board.each do |row|
      row.each do |cell|
        print cell.state
      end
      puts "\n"
    end
  end
end

# Example usage
board = Board.new
board.display_board



# def display_board
#   puts "  A B C D E F G"
#   @board.each_with_index do |row, index|
#     row_str = row.map(&:to_s).join(' ')
#     puts "#{index + 1}" 7.times do puts "#{@cell.state}" 
#     end
#   end
# end