require_relative 'board'
require_relative 'player'
require_relative 'computer'

class Game
  attr_accessor :player

  def initialize
    @board = Board.new
    @player = Player.new(@board)
    @computer = Computer.new(@board)
  end

  def play
    puts "Welcome to our Connect Four Game"
    puts "--------------------------------"
    puts "Press 'P' to play, or press 'Q' to quit"
    wanna_play = gets.chomp.downcase
    while wanna_play != 'p' && wanna_play != 'q'
      puts "Press 'P' to play, or press 'Q' to quit"
      wanna_play = gets.chomp.downcase
    end
    if wanna_play == 'q'
      exit()
    end
    puts "--------------------------------"
    puts "Great! Here's the board you'll be
          playing on."
    puts " "
    @board.display_board
    puts "Please enter your player name below"
    name = gets.chomp.capitalize
    loop do
      puts "#{name} it's now your turn!"
      # require'pry';binding.pry
      @player.player_turn(@board)
      @board.display_board
      if @board.check_winner == 'x'
        puts "You Won!"
        break
      end
      if @board.check_full == true
        puts "Draw!"
        break
      end

      ###Computers turn###
      @computer.computer_turn(@board)
      @board.display_board
      if @board.check_winner == 'o'
        puts "You Lost!"
        break
      end
      if @board.check_full == true
        puts "Draw!"
        break
      end
    end
  end
end