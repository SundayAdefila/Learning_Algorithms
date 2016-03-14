require 'minitest/autorun'
require '../algorithms/linear_search'

class AlgoTest < MiniTest::Test

	def test_linear_search
		assert_equal(9, Algorithms::Search.new.linear_search(10, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal(3, Algorithms::Search.new.linear_search(1, [7,2,4,1,8,9,3,5,10,6]))
		assert_equal(7, Algorithms::Search.new.linear_search(3, [10,9,8,7,6,5,4,3,2,1]))
		assert_equal(5, Algorithms::Search.new.linear_search(5, [1,2,3,4,6,5,7,8,9,10]))
	end
end
