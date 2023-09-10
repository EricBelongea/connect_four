
class Player
  attr_reader :name, :piece

  def initialize(name)
    @name = name
    @player_piece = 'x'
  end

  def player_turn(board)
    puts "#{@player}, choose which column A-G to place your piece."
    column = gets.chomp.upcase
    @integer = index_column(column)
    if valid_column(column) == true
      p @integer
      # drop piece method(column, current_player.disc)
    else valid_column(column) == false
      return "Input column A-G."
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




#Update your program to request user input and allow them to place an individual piece.
##define a method for turns
## inside turn, place a piece
## placed by index by column
## must be between A-G
## pieced dropped to lowest place in column
## Check to see if there is a place below before dropping, then shift index up one
## when column fills, return message you cannot place piece there


## make module for win conditions
##mixin to turn method

##turn class, player class, computer class, game_runner class


#Your program should ask the user to enter a letter A-G. 
#Update the board to display the player’s piece in the lowest available position of the selected column with an ‘X’.

#The computer takes its turn by selecting one of the 7 columns at random.
#Update the board to display the computer’s piece in the lowest available position of the selected column with an ‘O’.

#The player and computer should be able to repeat this sequence and continue taking turns.