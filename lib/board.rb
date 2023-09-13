class Board
  attr_reader :columns
  attr_accessor :grid, :last_move, :integer

  def initialize
    @grid = Array.new(6) { Array.new(7, '.') }
    @last_move = nil
    @columns = ["A", "B", "C", "D", "E", "F", "G"]
    @integer = nil
  end

  def default_board
    @grid = Array.new(6) { Array.new(7, '.') }
  end
  
  def column_full(column)
    (0...6).reverse_each do |row|
      next unless @grid[row][column] == '.'
      if @grid [row][column] == '.'
        return false
      else
        return true
      end
    end
  end

  def drop_disc(column, disc)
    (0...6).reverse_each do |row|
      next unless @grid[row][column] == '.'
      if @grid[row][column] != '.'
        return false
      else
        @grid[row][column] = disc
        @last_move = [row, column]
        return true
      end
    end
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

  def check_full
    @grid.flatten.none? { |cell| cell == '.' }
  end

  def check_winner
    return check_horizontal || check_vertical || check_diagonal
  end
  
  def check_horizontal
    # Check for a horizontal win
    @grid.each do |row|
      count = 0
      current_disc = nil
  
      row.each do |cell|
        if cell == current_disc
          count += 1
          return current_disc if count == 4 && current_disc != '.'
        else
          current_disc = cell
          count = 1
        end
      end
    end
  
    nil
  end
  
  def check_vertical
    # Check for a vertical win
    (0...6).each do |col|
      count = 0
      current_disc = nil
  
      @grid.each do |row|
        if row[col] == current_disc
          count += 1
          return current_disc if count == 4 && current_disc != '.'
        else
          current_disc = row[col]
          count = 1
        end
      end
    end
  
    nil
  end
  
  def check_diagonal
    # Check diagonal wins in both directions
  
    # Check diagonal going downwards (left to right)
    (0..2).each do |row|
      (0..3).each do |col|
        if @grid[row][col] != '.' &&
           @grid[row][col] == @grid[row + 1][col + 1] &&
           @grid[row][col] == @grid[row + 2][col + 2] &&
           @grid[row][col] == @grid[row + 3][col + 3]
          return @grid[row][col]
        end
      end
    end
  
    # Check diagonal going upwards (left to right)
    (3..5).each do |row|
      (0..3).each do |col|
        if @grid[row][col] != '.' &&
           @grid[row][col] == @grid[row - 1][col + 1] &&
           @grid[row][col] == @grid[row - 2][col + 2] &&
           @grid[row][col] == @grid[row - 3][col + 3]
          return @grid[row][col]
        end
      end
    end
  
    nil
  end
   
end