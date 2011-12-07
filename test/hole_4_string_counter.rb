require 'minitest/autorun'
require_relative '../hole_4_string_counter'

class TestHole4StringCounter < MiniTest::Unit::TestCase

  def test_simple
    assert_equal 3, count('Banana', 'a')
  end

  def test_complex
    assert_equal 2, count('RubySource provides advice, tutorials, commentary, and insight into the Ruby and Rails ecosystem', 'ruby')
  end

  def test_not_found
    assert_equal 0, count('Peanut Butter and Jelly', 'toast')
  end

end
