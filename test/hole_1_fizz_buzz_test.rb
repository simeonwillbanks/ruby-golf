require 'minitest/autorun'
require_relative '../hole_1_fizz_buzz'

class TestHole1FizzBuzz < MiniTest::Unit::TestCase

  def test_fizz
    assert_equal 'Fizz', fizzbuzz(3)
  end

  def test_buzz
    assert_equal 'Buzz', fizzbuzz(10)
  end

  def test_fizzbuzz
    assert_equal 'FizzBuzz', fizzbuzz(45)
  end

  def test_not_multiple_of_3_or_5
    assert_equal 31, fizzbuzz(31)
  end

end
