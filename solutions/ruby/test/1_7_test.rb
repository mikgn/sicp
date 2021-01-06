require 'minitest/autorun'
require '../1_7.rb'

class SqrtTest < Minitest::Test
  def test_returns_four
    assert Sqrt.calc(16).round(2) == 4.0
  end

  def test_doesnt_return_four
    assert Sqrt.calc(15).round(2) != 4.0
  end
end
