require 'timers'

timers = Timers::Group.new
# class Board
#   attr_accessor :grid, :last_move, :integer

#   def initialize
#     @grid = Array.new(6) { Array.new(7, '.') }
#     @last_move = nil
#     @columns = ["A", "B", "C", "D", "E", "F", "G"]
#     @integer = nil
#   end

#   def drop_disc(column, disc)
#     (0...6).reverse_each do |row|
#       next unless @grid[row][column] == '.'

#       @grid[row][column] = disc
#       @last_move = [row, column]
#       return true
#     end
#     false
#   end

#   def display_board
#     puts "Welcome to our connect Four Game"
#     puts "--------------------------------"
#     puts " "
#     puts "ABCDEFG"
#     @grid.each do |row|
#       row.each do |cell|
#         print cell
#       end
#       puts "\n"
#     end
#   end

#   def valid_column(player_input)
#     if @columns.include?(player_input)
#       return true
#     else
#       return "Choose a cloumn between A-G."
#     end
#   end

#   def player_turn(board)
#     puts "#{@player}, choose which column A-G to place your piece"
#     column = gets.chomp.upcase
#     @integer = index_column(column)
#     if valid_column(column) == true
#       p @integer
#       # drop piece method(column, current_player.disc)
#     else valid_column(column) == false
#       return "Input column A-G."
#     end
#   end

#   def index_column(column)
#     if column == "A"
#       column = 0
#     elsif column == "B"
#       column = 1
#     elsif column == "C"
#       column = 2
#     elsif column == "D"
#       column = 3
#     elsif column == "E"
#       column = 4
#     elsif column == "F"
#       column = 5
#     else column == "G"
#       column = 6
#     end
#   end
# end


# The following sesh is to play with a timer `gem install timers`
  # the gem didn't work how I wanted it to and so I abandoned it. 
# I just used basic ruby logic with #Time to make the timer.
  # now its time to implement this!
class TimeTest
  attr_reader :start, :finish
  def initialize
    @start = nil
    @finish = nil
  end
  puts "We will now play with a timer"
  name = gets.chomp.capitalize
  @start = Time.now
  loop do
    puts "Lets see how well you can type. Copy what I say."
    answer = gets.chomp.downcase
    @finish = Time.now
    if answer == "lets see how well you can type. copy what i say."
      puts "Great Job!"
    else
      puts "Learn how to type"
    end
    break
  end
  total_time = @finish.to_i - @start.to_i
  puts "This took you #{total_time} seconds to complete"
end
