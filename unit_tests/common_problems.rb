require 'minitest/autorun'
Dir['./common_problems/**/*.rb'].each { |f| require f }

class AlgoSearchTest < MiniTest::Test
  def test_knapsack
    items = [
      {'name'=>'shoe', 'weight'=> 1, 'value'=> 1},
      {'name'=>'spray', 'weight'=> 3, 'value'=> 4},
      {'name'=>'phone', 'weight'=> 4, 'value'=> 5},
      {'name'=>'ball', 'weight'=> 5, 'value'=> 7},
    ]
    assert_equal({items: "phone, spray", value: 9}, CommonProblems::Knapsack.new.find(7, items) )

    items = [
      {'name'=>'shirt', 'weight'=> 3, 'value'=> 5},
      {'name'=>'brush', 'weight'=> 2, 'value'=> 3},
      {'name'=>'fork', 'weight'=> 1, 'value'=> 4},
    ]
    assert_equal({items: "fork, shirt", value: 9}, CommonProblems::Knapsack.new.find(5, items) )
  end
end