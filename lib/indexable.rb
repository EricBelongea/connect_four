module Indexable
  def index_column(column)
    case
    when "A" then 0
    when "B" then 1
    when "C" then 2
    when "D" then 3
    when "E" then 4
    when "F" then 5
    when "G" then 6
    else
      -1 
    end
  end
end