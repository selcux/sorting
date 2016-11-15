defmodule QuickSort do

  @doc """
  Method 1
  """

  def sort1([]), do: []
  def sort1([pivot|rest]) do
    {smaller, larger} = partition(pivot, rest, [], [])
    sort1(smaller) ++ [pivot] ++ sort1(larger)
  end
     
  defp partition(_,[],smaller,larger), do: {smaller, larger}
  defp partition(pivot, [h|t], smaller, larger) do
    if h <= pivot do
      partition(pivot, t, [h|smaller], larger)
    else
      partition(pivot, t, smaller, [h|larger])
    end
  end

  @doc """
  Method 2
  """

  def sort2([]), do: []

  def sort2([h | t]) do
    {left, right} = Enum.partition(t, &(&1 < h))
    sort2(left) ++ [h] ++ sort2(right)
  end

  @doc """
  Method 3
  """

  def lc_sort([]), do: []
  def lc_sort([pivot|rest]) do
    lc_sort(for smaller <- rest, smaller <= pivot, do: smaller)
    ++ [pivot] ++
    lc_sort(for larger <- rest, larger > pivot, do: larger)
  end
end