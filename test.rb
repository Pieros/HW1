require "./part3.rb"
require "test/unit"
 
class Part3Test < Test::Unit::TestCase
  def test5
    a = BookInStock.new("123", 33.95);
    assert_equal("$33.95", a.price_as_string, 'should display 33.95 as "$33.95"')
    a.price = 1.1
    assert_equal("$1.10", a.price_as_string, 'should display 1.1 as "$1.10"')
    a.price = 20
    assert_equal("$20.00", a.price_as_string, 'should display 20 as "$20.00"')  
  end
end