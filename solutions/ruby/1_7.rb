# square root extraction

module Sqrt
  extend self

  # accuracy is taken as an example
  ACCURACY = 0.0000001

  def calc(x, guess = 1.0)
    guess = improve(x, guess) until good_enought?(x, guess)
    guess
  end

  private

  def average(x, y)
    (x + y) / 2
  end

  def square(x)
    x * x
  end

  def good_enought?(x, guess)
    (square(guess) - x).abs < ACCURACY
  end

  def improve(x, guess)
    average(guess, x / guess)
  end
end

# Sqrt.calc(x)
