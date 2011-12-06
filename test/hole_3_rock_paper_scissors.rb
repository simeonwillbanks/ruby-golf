require 'minitest/autorun'
require_relative '../hole_3_rock_paper_scissors'

class TestHole3RockPaperScissors < MiniTest::Unit::TestCase

  def test_play_paper_lose
    assert_equal 'Scissors,Lose', play('Paper', 'Scissors')
  end

  def test_play_paper_win
    assert_equal 'Rock,Win', play('Paper', 'Rock')
  end

  def test_play_paper_draw
    assert_equal 'Paper,Draw', play('Paper', 'Paper')
  end

  def test_play_rock_lose
    assert_equal 'Paper,Lose', play('Rock', 'Paper')
  end

  def test_play_rock_win
    assert_equal 'Scissors,Win', play('Rock', 'Scissors')
  end

  def test_play_rock_draw
    assert_equal 'Rock,Draw', play('Rock', 'Rock')
  end

  def test_play_scissors_lose
    assert_equal 'Rock,Lose', play('Scissors', 'Rock')
  end

  def test_play_scissors_win
    assert_equal 'Paper,Win', play('Scissors', 'Paper')
  end

  def test_play_scissors_draw
    assert_equal 'Scissors,Draw', play('Scissors', 'Scissors')
  end

  def test_play_soap
    assert_equal 'Paper,Lose', play('Soap', 'Paper')
  end

end
