require 'minitest/autorun'
Dir['./algorithms/search/**/*.rb'].each { |f| require f }

class AlgoSearchTest < MiniTest::Test

	def test_linear_search
    # start = Time.now
		assert_equal(9, Algorithms::Search::Linear.new.search(10, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal(3, Algorithms::Search::Linear.new.search(1, [7,2,4,1,8,9,3,5,10,6]))
		assert_equal(7, Algorithms::Search::Linear.new.search(3, [10,9,8,7,6,5,4,3,2,1]))
		assert_equal(5, Algorithms::Search::Linear.new.search(5, [1,2,3,4,6,5,7,8,9,10]))
    # stop = Time.now
    # p (start - stop)
	end

	def test_binary_search
    # start = Time.now
		assert_equal(9, Algorithms::Search::Binary.new.search(10, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal("not found", Algorithms::Search::Binary.new.search(15, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal(2, Algorithms::Search::Binary.new.search(3, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal('not found', Algorithms::Search::Binary.new.search(98, [1,2,3,4,5,6,7,8,9,10]))
    # stop = Time.now
    # p (start - stop)
	end

	def test_interpolation_search
    # start = Time.now
		assert_equal(9, Algorithms::Search::Interpolation.new.search(10, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal("not found", Algorithms::Search::Interpolation.new.search(15, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal(2, Algorithms::Search::Interpolation.new.search(3, [1,2,3,4,5,6,7,8,9,10]))
		assert_equal('not found', Algorithms::Search::Interpolation.new.search(-98, [1,2,3,4,5,6,7,8,9,10]))
    # stop = Time.now
    # p (start - stop)
	end
end
