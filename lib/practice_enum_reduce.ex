defmodule PracticeEnumReduce do
  @moduledoc """
  Playground Enum Reduce ; showcase , simple test programs.
  """

  @doc """
  This function uses Enum Reduce to check each element in list and then calls a 
  short notated anonymous function &add2 ;
  """
  def test_enum_reduce(list) do
    # this Enum reduce has &add2 annotates a anonymous function defined add/2.
    Enum.reduce(list, &add/2)
  end

  @doc """
  This add/2 is full syntax of anonymous func "fn x, acc -> x + acc end"
  """
  def add(elem, acc) do
    # This will display every element startin on first element 
    # sample: [10, 4, 5, 6, 11] 10 will be displayed first line then 14 (10 + 4 ) accumulated value
    # IO.inspect acc
    elem + acc
  end

end
