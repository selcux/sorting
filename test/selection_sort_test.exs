defmodule SelectionSortTest do
  use ExUnit.Case
  doctest SelectionSort

  test "empty" do
    assert SelectionSort.sort([]) == []
  end

  test "single element" do
    assert SelectionSort.sort([0]) == [0]
  end

  test "multiple elements" do
    assert SelectionSort.sort([1, 2]) == [1, 2]
    assert SelectionSort.sort([2, 1]) == [1, 2]
  end

  test "nonunique elements" do
    assert SelectionSort.sort([1, 1]) == [1, 1]
    assert SelectionSort.sort([1, 1, 2]) == [1, 1, 2]
    assert SelectionSort.sort([1, 2, 1]) == [1, 1, 2]
    assert SelectionSort.sort([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements" do
    assert SelectionSort.sort([-1, 0, 1]) == [-1, 0, 1]
    assert SelectionSort.sort([-1, -1, 1]) == [-1, -1, 1]
    assert SelectionSort.sort([-1, -2, 1]) == [-2, -1, 1]
    assert SelectionSort.sort([1, -2, 0]) == [-2, 0, 1]
  end
end