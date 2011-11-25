require 'minitest/autorun'
require_relative '../hole_2_caesar_cipher'

class TestHole2CaesarCipher < MiniTest::Unit::TestCase

  def test_positive_shift_a
    assert_equal 'khoor', caeser('hello', 3)
  end

  def test_positive_shift_b
    assert_equal 'mxpsv', caeser('jumps', 3)
  end

  def test_negative_shift_a
    assert_equal 'simeon', caeser('tjnfpo', -1)
  end

  def test_negative_shift_b
    assert_equal 'teresa', caeser('vgtguc', -2)
  end

  def test_positive_shift_wrap
    assert_equal 'ebip', caeser('axel', 4) 
  end

  def test_negative_shift_wrap
    assert_equal 'yoltk', caeser('brown', -3)
  end

  def test_mega_positive_shift_wrap
    assert_equal 'ebip', caeser('axel', 264) 
  end

  def test_mega_negative_shift_wrap
    assert_equal 'yoltk', caeser('brown', -263)
  end

end
