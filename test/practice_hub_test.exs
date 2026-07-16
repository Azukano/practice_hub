defmodule PracticeHubTest do
  use ExUnit.Case
  doctest PracticeHub

  test "greets the world" do
    assert PracticeHub.hello() == :world
  end

  test "Enum Reduce" do
    list = [10, 2, 3, 5, 6]
    assert PracticeEnumReduce.test_enum_reduce(list)
  end
end
