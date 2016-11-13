defmodule MergeSortTest do
  use ExUnit.Case
  doctest MergeSort

  test "empty" do
    assert MergeSort.sort([]) == []
  end

  test "single element" do
    assert MergeSort.sort([0]) == [0]
  end

  test "multiple elements" do
    assert MergeSort.sort([1, 2]) == [1, 2]
    assert MergeSort.sort([2, 1]) == [1, 2]
  end

  test "nonunique elements" do
    assert MergeSort.sort([1, 1]) == [1, 1]
    assert MergeSort.sort([1, 1, 2]) == [1, 1, 2]
    assert MergeSort.sort([1, 2, 1]) == [1, 1, 2]
    assert MergeSort.sort([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements" do
    assert MergeSort.sort([-1, 0, 1]) == [-1, 0, 1]
    assert MergeSort.sort([-1, -1, 1]) == [-1, -1, 1]
    assert MergeSort.sort([-1, -2, 1]) == [-2, -1, 1]
    assert MergeSort.sort([1, -2, 0]) == [-2, 0, 1]
  end
end