defmodule RandomList do
  @moduledoc false

  def generate(length, maxx \\ 100, minn \\ 0) do
    do_generate(length, maxx, minn, [])
  end

  defp do_generate(length, _, _, acc) when length(acc) == length, do: acc

  defp do_generate(length, maxx, minn, acc) do
    new_acc = [(minn + :rand.uniform(maxx - minn)) | acc]
    do_generate(length, maxx, minn, new_acc)
  end
end