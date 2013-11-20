require "./part3.rb"
require "test/unit"
 
class Part3Test < Test::Unit::TestCase
  def test1
    assert_equal("constant", defined? BookInStock, "class 'BookInStock' is undefined" )
    assert_equal(Class, BookInStock.class, "class 'BookInStock' is undefined" )
  end

  def test2
    assert_equal(true, BookInStock.instance_methods.include?(:isbn))
    assert_equal(true, BookInStock.instance_methods.include?(:isbn=))
    assert_equal(true, BookInStock.instance_methods.include?(:price))
    assert_equal(true, BookInStock.instance_methods.include?(:price=))
  end

  def test3
    assert_raise(ArgumentError, "should reject invalid ISBN number") {a = BookInStock.new("", 6)}
    assert_raise(ArgumentError, "should reject zero") {a = BookInStock.new("123", 0)}
    assert_raise(ArgumentError, "should reject negative price") {a = BookInStock.new("123", -1)}
  end

  def test4
    assert_equal(true, BookInStock.instance_methods.include?(:price_as_string))
  end

  def test5
    a = BookInStock.new("123", 33.95);
    assert_equal("$33.95", a.price_as_string, 'should display 33.95 as "$33.95"')
    a.price = 1.1
    assert_equal("$1.10", a.price_as_string, 'should display 1.1 as "$1.10"')
    a.price = 20
    assert_equal("$20.00", a.price_as_string, 'should display 20 as "$20.00"')  
  end
end
