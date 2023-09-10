require_relative 'board'
require_relative 'player'

class Game

  def initialize
    @board = Board.new
  end

  def play
    puts "Welcome to our Connect Four Game"
    puts "--------------------------------"
    puts "Press 'p' to play, or press 'q' to quit"
    wanna_play = gets.chomp.downcase
    if wanna_play == 'q'
      break
    elsif wanna_play == 'p'
      next
    else 
      "That's not a valid input"
    end
    puts " "
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