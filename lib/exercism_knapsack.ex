defmodule Knapsack do
  @doc """
  Return the maximum value that a knapsack can carry.
  """
  @spec maximum_value(items :: [%{value: integer, weight: integer}], maximum_weight :: integer) ::
          integer
  def maximum_value(items, maximum_weight) do
    sort_by_value_weight_ratio(items) |> accumulate_value(maximum_weight) |> elem(0)
  end

  def sort_by_value_weight_ratio(items) do 
    IO.inspect Enum.sort_by(items, &sort_items_by_ratio/1, :desc)
  end
 
  def accumulate_value(items, maximum_weight) do 
    Enum.reduce(items, {0, 0}, fn item, acc -> 
      add_value(item, acc, maximum_weight) 
    end)
  end

  def sort_items_by_ratio(item) do
    item.value / item.weight
  end

  def add_value(item, { value_accumulator, weight_accumulator }, maximum_weight) do
    if weight_accumulator + item.weight <= maximum_weight do
      { value_accumulator + item.value, weight_accumulator + item.weight }
    else
      if item.value > value_accumulator and item.weight <= maximum_weight do   
        { item.value, item.weight }
      else
        { value_accumulator , weight_accumulator }  
      end
    end
  end

end
