require 'minitest/autorun'
require '../1_16.rb'

class FastExptTest < Minitest::Test
  # number=2, exponent=3
  def test_returns_8
    assert FastExpt.calc(2, 3) == 8
  end

  # number=2, exponent=10
  def test_returns_1024
    assert FastExpt.calc(2, 10) == 1024
  end

  # number=2, exponent=0
  def test_returns_1
    assert FastExpt.calc(2, 0) == 1
  end
end
