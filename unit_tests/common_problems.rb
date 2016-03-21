require 'minitest/autorun'
Dir['./common_problems/**/*.rb'].each { |f| require f }

class AlgoSearchTest < MiniTest::Test
  def test_knapsack
    items = [
      {name: '', weight: 1, value: 1},
      {name: '', weight: 3, value: 4},
      {name: '', weight: 4, value: 5},
      {name: '', weight: 5, value: 7},
    ]

    assert_equal(67, CommonProblems::Knapsack.new.find(7, items) )
  end
end