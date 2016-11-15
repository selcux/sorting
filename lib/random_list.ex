defmodule RandomList do
  @moduledoc false

  def generate(size, maxx \\ 100, minn \\ 0) do
    do_generate(size, maxx, minn, [])
  end


  defp do_generate(size, _, _, acc) when length(acc) == size, do: acc

  defp do_generate(size, maxx, minn, acc) do
    new_acc = [(minn + :rand.uniform(maxx - minn)) | acc]
    do_generate(size, maxx, minn, new_acc)
  end
end