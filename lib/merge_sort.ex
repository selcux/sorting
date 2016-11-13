defmodule MergeSort do
  def sort(list) when length(list) <= 1, do: list

  def sort(list) do
    {left, right} = Enum.split(list, div(length(list), 2))
    # Erlang module :lisit.merge can also be used.
    # :lists.merge( merge_sort(left), merge_sort(right))
    do_sort(sort(left), sort(right))
  end

  defp do_sort(left, []), do: left
  defp do_sort([], right), do: right

  defp do_sort([hleft | tleft], [hright | tright]) when hleft <= hright do
    [hleft] ++ do_sort(tleft, [hright | tright])
  end

  defp do_sort([hleft | tleft], [hright | tright]) when hleft > hright do
    [hright] ++ do_sort([hleft | tleft], tright)
  end
end