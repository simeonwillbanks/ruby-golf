require 'minitest/autorun'
require_relative '../hole_5_swingers_function'

class TestHole5SwingersFunction < MiniTest::Unit::TestCase

  def setup
    @couples = [['Homer','Marge'],['Micky','Minnie'],['Fred','Wilma'],['Peter','Lois'],['George','Judy']]
  end

  def test_return_array
    assert_kind_of Array, swingers(@couples)
  end

  def test_couples_mixed
    swingers(@couples).each_with_index do |item, index|
      assert_includes item, @couples[index].first
      refute_includes item, @couples[index].last
    end
  end

end
