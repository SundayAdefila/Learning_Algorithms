require 'minitest/autorun'
require '../algorithms/sort/bubble_sort'

class AlgoSortTest < MiniTest::Test
  def test_bubble_sort
    start = Time.now
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
    stop = Time.now
    p (start - stop)
  end
end