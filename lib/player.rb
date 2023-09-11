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
    #p integer
    board.drop_disc(integer, @player_piece)
  end

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
