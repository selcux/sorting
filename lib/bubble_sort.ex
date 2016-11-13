defmodule BubbleSort do
  @moduledoc false

  def sort(list) when length(list) <= 1, do: list

  def sort(list) do
    do_sort(list, [])
  end
  
  defp do_sort([x], acc), do: [x | acc]

  defp do_sort(list, acc) do
    {unsorted, [last]} =
    shift(list)
    |> Enum.split(-1)

    do_sort(unsorted, [last | acc])
  end

  defp shift([x]), do: [x]
  
  defp shift([x, y | t]) do
    if (x > y),
        do: [y | shift([x | t])],
        else: [x | shift([y | t])]
  end

end