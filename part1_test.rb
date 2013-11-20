require "./part1.rb"
require "test/unit"
 
class Part1Test < Test::Unit::TestCase
  def test_sum_1
    assert_equal("method", defined? sum, "method 'sum' is undefined." )
  end

  def test_sum_2
    assert_equal(6, sum([1, 2, 3]), "method 'sum' does not work correctly." )
  end

  def test_sum_3
    assert_equal(0, sum([]), "method 'sum' does not work on empty array." )
  end

  def test_max_2_sum_1
    assert_equal("method", defined? max_2_sum, "method 'max_2_sum' is undefined." )
  end

  def test_max_2_sum_2
    assert_equal(5, max_2_sum([1, 2, 3]), "method 'max_2_sum' does not work correctly." )
  end

  def test_max_2_sum_3
    assert_equal(6, max_2_sum([3, 2, 3]), "method 'max_2_sum' does not work correctly." )
  end

  def test_max_2_sum_4
    assert_equal(0, max_2_sum([]), "method 'max_2_sum' does not work correctly." )
  end

  def test_max_2_sum_5
    assert_equal(4, sum([4]), "method 'max_2_sum' does not work correctly." )
  end
 
  def test_sum_to_n_1
    assert_equal("method", defined? sum_to_n?, "method 'sum_to_n?' is undefined." )
  end

  def test_sum_to_n_2
    assert_equal(true, sum_to_n?([1, 2, 3], 5), "method 'sum_to_n?' does not work correctly." )
  end

  def test_sum_to_n_3
    assert_equal(false, sum_to_n?([1, 2, 3], 7), "method 'sum_to_n?' does not work correctly." )
  end

  def test_sum_to_n_4
    assert_equal(false, sum_to_n?([], 5), "method 'sum_to_n?' does not work on empty array." )
  end

  def test_sum_to_n_5
    assert_equal(true, sum_to_n?([], 0), "method 'sum_to_n?' does not work on empty array." )
  end
end
