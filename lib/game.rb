require_relative 'board'
require_relative 'player'

class Game

  def initialize
    @board = Board.new
  end

  def play
    @board.display_board
    puts "Please enter your player name below"
    @player.name = gets.chomp.capitalize
    loop do
      puts "#{@player.name} it is your turn!"
      @player.player_turn
      @board.display_board
      #Check for win conditions
      # Check if board is full

      #Computers turn
      # display board
      #check for win conditions
      # Check if board is full
    end
    # if # win conditions are met == true
      # puts "The winner is #{winner}"
      # break
    #end
    # If # Baord is full? == true
      # puts "It's a draw!"
  end
end