defmodule QuickSort do
  def quicksort([]), do: []
  def quicksort([pivot|rest]) do
    {smaller, larger} = partition pivot, rest, [], []
    quicksort(smaller) ++ [pivot] ++ quicksort(larger) 
  end
     
  def partition(_,[],smaller,larger), do: {smaller, larger}
  def partition(pivot, [h|t], smaller, larger) do
    if h <= pivot do
      partition pivot, t, [h|smaller], larger
    else
      partition pivot, t, smaller, [h|larger]
    end
  end
    
  def lc_quicksort([]), do: []
  def lc_quicksort([pivot|rest]) do
    lc_quicksort(for smaller <- rest, smaller <= pivot, do: smaller)
    ++ [pivot] ++
    lc_quicksort(for larger <- rest, larger > pivot, do: larger)
  end
end