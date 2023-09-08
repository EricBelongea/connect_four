# class Bored
#   attr_accessor :board
#   def initialize
#     @board = default_state
#   end

#   def default_state
#     return [
#       [1, 2, 3, 4, 5, 6, 7],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ['.', '.', '.', '.', '.', '.', '.'],
#       ]
#   end

#   def render
#     @board.each_with_index do | row, index |
#       if index % 7 == 0 && index != 0
#         puts ""
#         print row
#       else
#         print row
#       end
#     end
#   end
# end
# #require 'pry';binding.pry
# bored = Bored.new
# puts bored.render


# class Bored
#   attr_accessor :board
#   def initialize
#     @board = [['.', '.', '.', '.', '.', '.', '.'],
#     ['.', '.', '.', '.', '.', '.', '.'],
#     ['.', '.', '.', '.', '.', '.', '.'],
#     ['.', '.', '.', '.', '.', '.', '.'],
#     ['.', '.', '.', '.', '.', '.', '.'],
#     ['.', '.', '.', '.', '.', '.', '.']]
#     @rows = 6
#     @columns = 7    
#   end

#   def render
#     print("/n   A   B   C   D   E   F   G   ")
#     print @board
      

#   end
# end
# bored = Bored.new
# puts bored.render

Matrix(6, 7) {|row, col|}
 
puts Matrix