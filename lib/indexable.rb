module Indexable
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