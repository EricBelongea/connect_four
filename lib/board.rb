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

  ## I moved the following methods into the player class. ###

  # def player_turn
  #   puts "#{@player}, choose which column A-G to place your piece"
  #   column = gets.chomp.upcase
  #   integer = index_column(column)
  #   if valid_column(column) == true
  #     p integer
  #     # drop piece method(column, current_player.disc)
  #   else valid_column(column) == false
  #     return "Please choose a column A-G."
  #   end
  # end

  # def index_column(column)
  #   if column == "A"
  #     column = 0
  #   elsif column == "B"
  #     column = 1
  #   elsif column == "C"
  #     column = 2
  #   elsif column == "D"
  #     column = 3
  #   elsif column == "E"
  #     column = 4
  #   elsif column == "F"
  #     column = 5
  #   else column == "G"
  #     column = 6
  #   end
  # end
end