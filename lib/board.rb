class Board
  attr_accessor :grid, :last_move, :integer

  def initialize
    @grid = Array.new(6) { Array.new(7, '.') }
    @last_move = nil
    @columns = ["A", "B", "C", "D", "E", "F", "G"]
    @integer = nil
  end

  def drop_disc(column, disc)
    (0...6).reverse_each do |row|
      next unless @grid[row][column] == '.'

      @grid[row][column] = disc
      @last_move = [row, column]
      return true
    end
     return "This column is full, please choose another column."
  end

  def display_board
   
    puts "ABCDEFG"
    @grid.each do |row|
      row.each do |cell|
        print cell
      end
      puts "\n"
    end
  end

  def valid_column(player_input)
    @columns.include?(player_input)
  end
end