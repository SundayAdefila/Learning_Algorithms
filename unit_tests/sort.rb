require 'minitest/autorun'
Dir['./algorithms/sort/**/*.rb'].each { |f| require f }

class AlgoSortTest < MiniTest::Test
  def test_bubble_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Bubble.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Bubble.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_insertion_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Insertion.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Insertion.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_selection_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Selection.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Selection.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_merge_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Merge.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Merge.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_shell_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Shell.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Shell.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_quick_sort
    # start = Time.now
    casses = [
      [8,7,6,5,4,1,2,3,9,10],
      [7,2,4,1,8,9,3,5,10,6],
      [10,9,8,7,6,5,4,3,2,1],
      [1,2,3,4,6,5,7,8,9,10],
    ]
    result = [1,2,3,4,5,6,7,8,9,10]
    casses.each do |array|
      assert_equal(result, Algorithms::Sort::Quick.new.sort(array))
    end
    assert_equal(['a','b','c','d','e'], Algorithms::Sort::Quick.new.sort(['c','e','a','d','b']))
    # stop = Time.now
    # p (start - stop)
  end

  def test_quick_sort_sort_about_pivot
    assert_equal([[5,2,4,1,3,6,9,8,7,10,6],0,10, 5], Algorithms::Sort::Quick.new.sort_about_pivot([7,2,4,1,8,9,3,5,10,6,6], 0, 10))
    assert_equal([[1,10,9,8,7,6,5,4,3,2],0,9, 0], Algorithms::Sort::Quick.new.sort_about_pivot([10,9,8,7,6,5,4,3,2,1], 0, 9))
    assert_equal([[5,2,4,1,3,6,9,8,7,10],0,9, 5], Algorithms::Sort::Quick.new.sort_about_pivot([7,2,4,1,8,9,3,5,10,6], 0, 9))
    assert_equal([[8,7,6,5,4,1,2,3,9,10],0,9, 9], Algorithms::Sort::Quick.new.sort_about_pivot([8,7,6,5,4,1,2,3,9,10], 0, 9))
    assert_equal([[5,2,4,1,3,6,8,9,7,10,6],0,10,5], Algorithms::Sort::Quick.new.sort_about_pivot([5,2,4,1,3,8,9,7,10,6,6], 0, 10))
    assert_equal([[2,4,5],0,2, 1], Algorithms::Sort::Quick.new.sort_about_pivot([5,2,4], 0, 2))
    assert_equal([[2,5], 0, 1], Algorithms::Sort::Quick.new.sort_about_pivot([5,2], 0, 1))
    assert_equal([[5], 0, 0], Algorithms::Sort::Quick.new.sort_about_pivot([5], 0, 0))
  end
end