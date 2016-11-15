defmodule QuickSortTest do
  use ExUnit.Case
  doctest QuickSort

  test "empty for method1" do
    assert QuickSort.sort1([]) == []
  end

  test "single element for method1" do
    assert QuickSort.sort1([0]) == [0]
  end

  test "multiple elements for method1" do
    assert QuickSort.sort1([1, 2]) == [1, 2]
    assert QuickSort.sort1([2, 1]) == [1, 2]
  end

  test "nonunique elements for method1" do
    assert QuickSort.sort1([1, 1]) == [1, 1]
    assert QuickSort.sort1([1, 1, 2]) == [1, 1, 2]
    assert QuickSort.sort1([1, 2, 1]) == [1, 1, 2]
    assert QuickSort.sort1([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements for method1" do
    assert QuickSort.sort1([-1, 0, 1]) == [-1, 0, 1]
    assert QuickSort.sort1([-1, -1, 1]) == [-1, -1, 1]
    assert QuickSort.sort1([-1, -2, 1]) == [-2, -1, 1]
    assert QuickSort.sort1([1, -2, 0]) == [-2, 0, 1]
  end


  test "empty for method2" do
    assert QuickSort.sort2([]) == []
  end

  test "single element for method2" do
    assert QuickSort.sort2([0]) == [0]
  end

  test "multiple elements for method2" do
    assert QuickSort.sort2([1, 2]) == [1, 2]
    assert QuickSort.sort2([2, 1]) == [1, 2]
  end

  test "nonunique elements for method2" do
    assert QuickSort.sort2([1, 1]) == [1, 1]
    assert QuickSort.sort2([1, 1, 2]) == [1, 1, 2]
    assert QuickSort.sort2([1, 2, 1]) == [1, 1, 2]
    assert QuickSort.sort2([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements for method2" do
    assert QuickSort.sort2([-1, 0, 1]) == [-1, 0, 1]
    assert QuickSort.sort2([-1, -1, 1]) == [-1, -1, 1]
    assert QuickSort.sort2([-1, -2, 1]) == [-2, -1, 1]
    assert QuickSort.sort2([1, -2, 0]) == [-2, 0, 1]
  end


  test "empty for method3" do
    assert QuickSort.lc_sort([]) == []
  end

  test "single element for method3" do
    assert QuickSort.lc_sort([0]) == [0]
  end

  test "multiple elements for method3" do
    assert QuickSort.lc_sort([1, 2]) == [1, 2]
    assert QuickSort.lc_sort([2, 1]) == [1, 2]
  end

  test "nonunique elements for method3" do
    assert QuickSort.lc_sort([1, 1]) == [1, 1]
    assert QuickSort.lc_sort([1, 1, 2]) == [1, 1, 2]
    assert QuickSort.lc_sort([1, 2, 1]) == [1, 1, 2]
    assert QuickSort.lc_sort([2, 1, 1]) == [1, 1, 2]
  end

  test "negative elements for method3" do
    assert QuickSort.lc_sort([-1, 0, 1]) == [-1, 0, 1]
    assert QuickSort.lc_sort([-1, -1, 1]) == [-1, -1, 1]
    assert QuickSort.lc_sort([-1, -2, 1]) == [-2, -1, 1]
    assert QuickSort.lc_sort([1, -2, 0]) == [-2, 0, 1]
  end


end