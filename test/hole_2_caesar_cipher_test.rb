require 'minitest/autorun'
require_relative '../hole_2_caesar_cipher'

class TestHole2CaesarCipher < MiniTest::Unit::TestCase

  def test_positive_shift_a
    assert_equal 'khoor', caesar('hello', 3)
  end

  def test_positive_shift_b
    assert_equal 'mxpsv', caesar('jumps', 3)
  end

  def test_negative_shift_a
    assert_equal 'simeon', caesar('tjnfpo', -1)
  end

  def test_negative_shift_b
    assert_equal 'teresa', caesar('vgtguc', -2)
  end

  def test_positive_shift_wrap
    assert_equal 'ebip', caesar('axel', 4) 
  end

  def test_negative_shift_wrap
    assert_equal 'yoltk', caesar('brown', -3)
  end

  def test_mega_positive_shift_wrap
    assert_equal 'ebip', caesar('axel', 264) 
  end

  def test_mega_negative_shift_wrap
    assert_equal 'yoltk', caesar('brown', -263)
  end

end
