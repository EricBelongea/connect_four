require_relative 'board'
require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :start, :finish
  attr_accessor :player

  def initialize
    @board = Board.new
    @player = Player.new(@board)
    @computer = Computer.new(@board)
    @start = nil
    @finish = nil
  end
  puts "---------------------------------"
  puts "Welcome to our game, Quad Connect™"
  puts "---------------------------------"
  def play
    @board.default_board
    puts "Press 'P' to play, or press 'Q' to quit"
    wanna_play = gets.chomp.downcase
    puts " "
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
    puts "--------------------------------"
    puts "Please enter your player name below"
    puts "--------------------------------"
    name = gets.chomp.capitalize
    @player.assign_player_name(name)
    @start = Time.now
    loop do
      puts "#{@player.name}, it's now your turn!"
      @player.player_turn(@board)
      @board.display_board
      if @board.check_winner == 'x'
        puts " "
        puts "You Won!"
        puts " "
        break
      end
      if @board.check_full == true
        puts " "
        puts "Draw!"
        puts " "
        break
      end

      ###Computers turn###
      @computer.computer_turn(@board)
      @board.display_board
      if @board.check_winner == 'o'
        puts " "
        puts "You Lost!"
        puts " "
        break
      end
      if @board.check_full == true
        puts " "
        puts "Draw!"
        puts " "
        break
      end
      @finish = Time.now
    end
    total_time = @finish.to_i - @start.to_i
    puts "It took you #{total_time} seconds to play this game."
    # puts " "
    puts "------------------------------"
    puts "Don't disconnect, Quad Connect™!"
    puts "------------------------------"
    puts "Play again?"
    puts " "
    play
  end
end