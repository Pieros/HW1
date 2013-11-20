require "./part2.rb"
require "test/unit"
 
class Part1Test < Test::Unit::TestCase
  def test_hello_1
    assert_equal("method", defined? hello, "method 'hello' is undefined." )
  end

  def test_hello_2
    assert_equal("Hello, Jack", hello("Jack"), "method 'hello' does not work correctly." )
  end

  def test_starts_with_consonant_1
    assert_equal("method", defined? starts_with_consonant?, "method 'starts_with_consonant?' is undefined." )
  end

  def test_starts_with_consonant_2
    assert_equal(true, starts_with_consonant?("Seven"), "method 'starts_with_consonant?' does not work correctly." )
  end

  def test_starts_with_consonant_3
    assert_equal(false, starts_with_consonant?("Eleven"), "method 'starts_with_consonant?' does not work correctly." )
  end

  def test_starts_with_consonant_4
    assert_equal(false, starts_with_consonant?(""), "method 'starts_with_consonant?' does not work on empty string." )
  end

  def test_starts_with_consonant_5
    assert_equal(false, starts_with_consonant?("7-11"), "method 'starts_with_consonant?' does not work correctly." )
  end
 
  def test_binary_multiple_of_4_1
    assert_equal("method", defined? binary_multiple_of_4?, "method 'binary_multiple_of_4?' is undefined." )
  end

  def test_binary_multiple_of_4_2
    assert_equal(true, binary_multiple_of_4?("1100"), "method 'binary_multiple_of_4?' does not work correctly." )
  end

  def test_binary_multiple_of_4_3
    assert_equal(false, binary_multiple_of_4?("1101"), "method 'binary_multiple_of_4??' does not work correctly." )
  end

  def test_binary_multiple_of_4_4
    assert_equal(false, binary_multiple_of_4?("110022"), "method 'binary_multiple_of_4??' does not work correctly." )
  end

end
