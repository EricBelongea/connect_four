class Cell
  attr_reader :state

  def initialize
    @state = "."
  end

  def change_state(player_input)
    @state = player_input
  end
end