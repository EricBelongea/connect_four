require_relative "indexable"
require_relative 'board'  

class Player
  include Indexable
  attr_reader :name, :player_piece

  def initialize(board)
    @name = name
    @player_piece = 'x'
    @board = board
  end

  def player_turn(board)
    puts "Choose which column A-G to place your piece."
    column = gets.chomp.upcase
    until @board.valid_column(column) == true
      puts "Choose which column A-G to place your piece."
      column = gets.chomp.upcase
    end
    integer = index_column(column)
    until @board.column_full(integer) == false
      puts "This column is full. Select another column."
      column = gets.chomp.upcase
      integer = index_column(column)
    end
    board.drop_disc(integer, @player_piece)
  end
end
