require 'minitest/autorun'
require '../1_11.rb'

class FuncTest < Minitest::Test
  # fn_rec
  def test_returns_11
    assert fn_rec(5) == 11
  end

  def test_returns_230
   assert fn_rec(10) == 230
  end

  # fn_int
  def test_returns_20
    assert fn_int(6) == 20
  end

  def test_returns_
   assert fn_int(11) == 423
  end
end
