require 'minitest/autorun'
require './serving_multiplier'

class Test_Serving_Calculator < Minitest::Test
  def test_multiplication
    meal = Serving_Calculator.new
    assert_equal 4, meal.serving_multiplier(2, 2), "Multiplication method failed"
  end
end
