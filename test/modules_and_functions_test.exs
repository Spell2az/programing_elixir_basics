defmodule ModulesAndFunctionsTest do
  use ExUnit.Case

  import ModulesAndFunctions

  test "sum 0 returns 0" do
    assert sum(0) == 0
  end

  test "sum 1 return 1" do
    assert sum(1) == 1
  end

  test "sum 2 return 3" do
    assert sum(2) == 3
  end

  test "sum 5 return 15" do
    assert sum(5) == 15
  end

  test "gcd of 10, 30" do
    assert gcd(36, 24) == 12
  end

  test "gcd of 12 and 17" do
    assert gcd(5, 12) == 1
  end

  test "gcd of 450 and 630" do
    assert gcd(450, 630) == 90
  end



end
