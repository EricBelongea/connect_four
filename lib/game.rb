require_relative 'board'
require_relative 'player'

class Game

  def initialize
    @board = Board.new
  end

  def play
    puts "Welcome to our Connect Four Game"
    puts "--------------------------------"
    puts "Press 'P' to play, or press 'Q' to quit"
    wanna_play = gets.chomp.downcase
    while wanna_play != 'p' || 'q'
      puts "Press 'P' to play, or press 'Q' to quit"
      wanna_play = gets.chomp.downcase
    end
    if wanna_play == 'q'
      exit()
    end
    puts " "
    @board.display_board
    puts "Please enter your player name below"
    @player.name = gets.chomp.capitalize
    loop do
      puts "#{@player.name} it is your turn!"
      @player.player_turn
      @board.display_board
      if @board.check_winner == 'x'
        puts "You Won!"
      end
      if @board.check_full == true
        puts "Draw!"
      end

      ###Computers turn###
      @computer.computer_turn
      @board.display_board
      if @board.check_winner == 'o'
        puts "You Lost!"
      end
      if @board.check_full == true
        puts "Draw!"
      end
    end
  end
end