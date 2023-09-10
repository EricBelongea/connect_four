class Computer
  attr_reader :piece

  def initialize
    @piece = 'o'
  end

  def computer_turn(board)
    puts "The computer will now make a turn."
    column = board.columns.sample
    integer = player.index_column(column)
    if valid_column(column) == true
      board.drop_disc(integer, @piece)
    end
  end
end