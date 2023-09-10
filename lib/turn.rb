class Turn
  attr_reader :player, :board

  def initialize(player)
    @player = player
    @columns = ["A", "B", "C", "D", "E", "F", "G"]
  end

  def valid_column(player_input)
    if @columns.include?(player_input)
      return true
    else
      return "Choose a cloumn between A-G."
    end
  end

  def player_turn(board)
    puts "#{@player}, choose which column A-G to place your piece"
    column = gets.chomp.upcase
    if valid_column(column) == true
      # drop piece method(column)
    else valid_column(column) == false
      return "Input column A-G."
    end
  end

  def drop_piece(column)
    #use player input to find the column on the board
    # column = index_column(column)
    # @board[6][column]
    # .index-1
    #index that column to the bottom
    #row then column
    #if cell.state is '.', we change to 'x || o'
    #else, board.index[-1]
    @boards.each do |board|
      board.default_board[0][0] = 'x'
      board.display_board
    end
    #board needs to be instantiated as board class in this method
    #board is part of Turn
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

  # def player_turn
  #   player_input = gets.chomp.upcase
  #   if valid_column(player_input) == true
  #     # drop to bottom logic
  #   else

  #   end
  # end

  # def ask_for_move
  #   puts "#{@player}, choose which column A-G to place your piece"
  #   gets.chomp.upcase
  # end

#   def places_piece(player_input)
#     if valid_column(player_input) == true
#       @board
#     end
#   end

#   def letter_to_index
#     @
#   end
# end

# Validate column choice.
#   This works as of rn.
# How to get player input.
#   Player piece == x
#   Player_input = gets.chomp.upcase
# How to iterate through the board to get to
#   the bottom of the board. A = @board[x][0]
     # I know that A will be the index 0 in a row
     # Save A to row.index[0]?
# Get switch player to CPU and recieve their rand turn

# class Turn
#   attr_reader :turn, :player, :board, :piece
#   attr_accessor :player_choice
#   def initialize (player, board)
#     @turn = turn
#     @player = player
#     @board = board
#     @piece = "x"
#     @player_choice = []
#     #@computer = computer
#   end

#   # def ask_for_move
#   #   puts "#{@player}, choose which column A-G to place your piece"
#   #   player_choice = gets
#   #   player_choice.chomp.upcase
#   #   player_choice.split("")
#   #   @player_choice << player_choice
#   # end

# #player chooses A-G
#   def player_turn(column)
#     #parameter is column = nil defaul when ask move works
#     # column = @player_choice
#     if valid_column(column) == true
#       return column
#     else valid_column(column) == false
#       return "Input column A-G."
#     end
#   end

#   def valid_column(parameter)
#     #player_choice == "A" || "B" || "C" || "D" || "E" || "F" || "G"
#     valid_column_options = ["A", "B", "C", "D", "E", "F", "G"]
#     parameter.find do |choice|
#       if valid_column_options.include?(choice)
#         return true
#       else
#         return false
#       end
#     end
#   end

#   #@board.disply_board
#   #update individual cell.state by index
#   #if piece is already at bottom shift up
#   def update_board
#     something
#   end

#   #The computer takes its turn by selecting one of the 7 columns at random.
# #Update the board to display the computer’s piece in the lowest available position of the selected column with an ‘O’.
#   def computer_turn
#     random
#   end

#     # @board.each do |row|
#     #   row.each do |cell|
#     #     print cell.state
#     #piece goes to bottom of that column
#     # 0 0123456
#     # 1 0123456
#     # 2 0123456
#     # 3 0123456
#     # 4 0123456
#     # 5 0123456
#     #first check by row
#     #if something is there, row index -1
#     # column A = first index of each row
#     # column B = second index
#     # ... column G = sixth index

#     #require 'pry';binding.pry
# end
# #Update your program to request user input and allow them to place an individual piece.
# ##define a method for turns
# ## inside turn, place a piece
# ## placed by index by column
# ## must be between A-G
# ## pieced dropped to lowest place in column
# ## Check to see if there is a place below before dropping, then shift index up one
# ## when column fills, return message you cannot place piece there


# ## make module for win conditions
# ##mixin to turn method

# ##turn class, player class, computer class, game_runner class


# #Your program should ask the user to enter a letter A-G.
# #Update the board to display the player’s piece in the lowest available position of the selected column with an ‘X’.

# #The player and computer should be able to repeat this sequence and continue taking turns.
# #LOOP turns UNTIL win condition

