defmodule ListsRecursionTest do
  use ExUnit.Case
  import ListsRecursion

  test "returns sum 0" do
    assert mapsum([1, 2, 3], &(&1 * 0)) == 0
  end

  test "return square sum" do
    assert mapsum([3, 4, 5, 0], &(&1 * &1)) == 50
  end

  test "max is 1" do
    assert max([1]) == 1
  end

  test "max 2" do
    assert max([1, 2]) == 2
  end

  test "max 2 swapped" do
    assert max([2, 1]) == 2
  end

  test "max 3" do
    assert max([2, 1, 3]) == 3
  end

  test "max 12" do
    assert max([11, 10, 10, 10, 11, 12, 12]) == 12
  end

  test "from 1 - 2" do
    assert span(1,2) == [1,2]
  end

  test "from 1 - 3" do
    assert span(1,3) == [1,2,3]
  end
end
