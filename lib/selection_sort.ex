defmodule SelectionSort do
	def sort([]), do: []

	def sort(list), do: sort(list, [])

	defp sort([], sorted), do: sorted

	defp sort(unsorted, sorted) do
		maxx = select_max(unsorted, [])
		reduced_unsorted = List.delete(unsorted, maxx)

		sort(reduced_unsorted, [maxx | sorted])
	end

	defp select_max([], [maxx]), do: maxx

	defp select_max([h | t], []),
		do: select_max(t, [h])

	defp select_max([h | t], [maxx]) do
		if (h > maxx),
			do: select_max(t, [h]),
			else: select_max(t, [maxx])
	end

end