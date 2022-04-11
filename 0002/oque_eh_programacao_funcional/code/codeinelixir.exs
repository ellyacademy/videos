defmodule MyList do
  def lengthof([]) do 0 end
  def lengthof([_h|t]) do
    1 + lengthof(t)
  end
end

IO.puts MyList.lengthof([1, 2, 3, 4, 5])
