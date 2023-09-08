class Turn
  attr_reader :turn, :player, :board, :piece
  attr_accessor :player_choice
  def initialize (player, board)
    @turn = turn
    @player = player
    @board = board
    @piece = "x"
    @player_choice = []
    #@computer = computer
  end

  # def ask_for_move
  #   puts "#{@player}, choose which column A-G to place your piece"
  #   player_choice = gets
  #   player_choice.chomp.upcase
  #   player_choice.split("")
  #   @player_choice << player_choice
  # end

#player chooses A-G
  def player_turn(column)
    #parameter is column = nil defaul when ask move works
    # column = @player_choice
    if valid_column(column) == true
      return column
    else valid_column(column) == false
      return "Input column A-G."
    end
  end

  def valid_column(parameter)
    #player_choice == "A" || "B" || "C" || "D" || "E" || "F" || "G"
    valid_column_options = ["A", "B", "C", "D", "E", "F", "G"]
    parameter.find do |choice|
      if valid_column_options.include?(choice)
        return true
      else
        return false
      end
    end
  end

  #@board.disply_board
  #update individual cell.state by index
  #if piece is already at bottom shift up
  def update_board
    something
  end

  #The computer takes its turn by selecting one of the 7 columns at random.
#Update the board to display the computer’s piece in the lowest available position of the selected column with an ‘O’.
  def computer_turn
    random
  end
 
    # @board.each do |row|
    #   row.each do |cell|
    #     print cell.state
    #piece goes to bottom of that column
    # 0 0123456
    # 1 0123456
    # 2 0123456
    # 3 0123456
    # 4 0123456
    # 5 0123456
    #first check by row
    #if something is there, row index -1
    # column A = first index of each row
    # column B = second index
    # ... column G = sixth index

    #require 'pry';binding.pry
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

#The player and computer should be able to repeat this sequence and continue taking turns.
#LOOP turns UNTIL win condition

 