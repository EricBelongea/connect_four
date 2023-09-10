
class Player
  attr_reader :name, :piece

  def initialize(name)
    @name = name
    @player_piece = 'x'
  end

  def player_turn(board)
    puts "#{@player}, choose which column A-G to place your piece."
    column = gets.chomp.upcase
    integer = index_column(column)
    if valid_column(column) == true
      board.drop_disc(integer, @player_piece)
    else 
      return "Please choose a column A-G."
    end
  end

  def index_column(column)
    if column == "A"
      column = 0
    elsif column == "B"
      column = 1
    elsif column == "C"
      column = 2
    elsif column == "D"
      column = 3
    elsif column == "E"
      column = 4
    elsif column == "F"
      column = 5
    else column == "G"
      column = 6
    end
  end
end
