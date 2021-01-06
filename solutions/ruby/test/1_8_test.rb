require 'minitest/autorun'
require '../1_8.rb'

class QbrtTest < Minitest::Test
  def test_returns_five
    assert Qbrt.calc(125).round(2) == 5.0
  end

  def test_doesnt_return_five
    assert Qbrt.calc(124).round(2) != 5.0
  end
end
