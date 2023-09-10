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
    puts "Welcome to our Connect Four Game"
    puts "--------------------------------"
    puts " "
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
    row, col = @last_move
    disc = @grid[row][col]

    #this checks four in a row by column
    count = 0
    (col - 3..col + 3).each do |c|
      break if c.negative? || c >= 7
      if @grid[row][c] == disc
        count += 1
        return disc if count == 4
      else
        count = 0
      end
    end

    #this checks four in a row by row
    count = 0
    6.times do |r|
      break if r >= 6
      if @grid[r][col] == disc
        count += 1
        return disc if count == 4
      else
        count = 0
      end
    end

    #this checks four in a row by diagonal going upwards
    count = 0
    (row - 3..row + 3).each do |r|
      c = col + (r - row)
      break if r.negative? || r >= 6 || c.negative? || c >= 7

      if @grid[r][c] == disc
        count += 1
        return disc if count == 4
      else
        count = 0
      end
    end

    #this checks four in a row by diagonal going downwards
    count = 0
    (row - 3..row + 3).each do |r|
      c = col - (r - row)
      break if r.negative? || r >= 6 || c.negative? || c >= 7

      if @grid[r][c] == disc
        count += 1
        return disc if count == 4
      else
        count = 0
      end
    end
    nil
    #we will need to change return value from 'disc' to either
    #'you won!' or 'you lost to a computer!'
  end

end