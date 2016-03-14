require 'minitest/autorun'
#require 'test/unit'

class StringTest < MiniTest::Test
	def test_length
		s = "Hello, World!"
		assert_equal(13, s.length)
	end
end
