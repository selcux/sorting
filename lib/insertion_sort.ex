defmodule InsertionSort do
  def sort(list) do
    insert_sort([], list)
  end


  defp insert_sort(sorted, []), do: sorted

  defp insert_sort(sorted, [h | t]) do
    sorted
    |> add_to_sorted(h)
    |> insert_sort(t)
  end


  defp add_to_sorted([], x), do: [x]

  defp add_to_sorted([h | t], x) when x > h,
    do: [h | add_to_sorted(t, x)]

  defp add_to_sorted([h | t], x),
    do: [x] ++ [h | t]
end