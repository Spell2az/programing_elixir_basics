defmodule ListsRecursion do
  def mapsum([], _fun), do: 0

  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end

  def max([head]), do: head
  def max([head | [h | []]]) when head > h, do: max([head])
  def max([head | [h | []]]) when head < h, do: max([h])
  def max([head | [h | []]]) when head == h, do: max([h])
  def max([head | [h | tail]]) when head > h, do: max([head | tail])
  def max([head | [h | tail]]) when head < h, do: max([h | tail])
  def max([head | [h | tail]]) when head == h, do: max([h | tail])


  def span(from, [to | tail]) when from == to, do: [to | tail]
  def span(from, [to | tail]) when from < to, do: span(from, [ to-1 |[to | tail]])
  def span(from, to), do: span(from, [to])


end
