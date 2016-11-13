defmodule BubbleSortTest do
  use ExUnit.Case
  doctest BubbleSort

  test "empty" do
    assert BubbleSort.sort([]) == []
  end

  test "single element" do
    assert BubbleSort.sort([0]) == [0]
  end

  test "multiple elements" do
    assert BubbleSort.sort([1, 2]) == [1, 2]
    assert BubbleSort.sort([2, 1]) == [1, 2]
  end

  test "nonunique elements" do
    assert BubbleSort.sort([1, 1]) == [1, 1]
    assert BubbleSort.sort([1, 1, 2]) == [1, 1, 2]
    assert BubbleSort.sort([1, 2, 1]) == [1, 1, 2]
    assert BubbleSort.sort([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements" do
    assert BubbleSort.sort([-1, 0, 1]) == [-1, 0, 1]
    assert BubbleSort.sort([-1, -1, 1]) == [-1, -1, 1]
    assert BubbleSort.sort([-1, -2, 1]) == [-2, -1, 1]
    assert BubbleSort.sort([1, -2, 0]) == [-2, 0, 1]
  end
end