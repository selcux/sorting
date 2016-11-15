defmodule InsertionSortTest do
  use ExUnit.Case
  doctest InsertionSort

  test "empty" do
    assert InsertionSort.sort([]) == []
  end

  test "single element" do
    assert InsertionSort.sort([0]) == [0]
  end

  test "multiple elements" do
    assert InsertionSort.sort([1, 2]) == [1, 2]
    assert InsertionSort.sort([2, 1]) == [1, 2]
  end

  test "nonunique elements" do
    assert InsertionSort.sort([1, 1]) == [1, 1]
    assert InsertionSort.sort([1, 1, 2]) == [1, 1, 2]
    assert InsertionSort.sort([1, 2, 1]) == [1, 1, 2]
    assert InsertionSort.sort([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements" do
    assert InsertionSort.sort([-1, 0, 1]) == [-1, 0, 1]
    assert InsertionSort.sort([-1, -1, 1]) == [-1, -1, 1]
    assert InsertionSort.sort([-1, -2, 1]) == [-2, -1, 1]
    assert InsertionSort.sort([1, -2, 0]) == [-2, 0, 1]
  end
end