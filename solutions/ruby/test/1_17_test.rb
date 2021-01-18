require 'minitest/autorun'
require '../1_17.rb'

class FastMultTest < Minitest::Test
  # number=2, multiplier = 100
  def test_returns_8
    assert FastMult.calc(2, 100) == 200
  end

  # number=2, exponent=10
  def test_returns_1024
    assert FastMult.calc(30, 33) == 990
  end

  # number=0, exponent=1
  def test_returns_1
    assert FastMult.calc(0, 1) == 0
  end
end
