# cube root extraction

module Qbrt
  extend self

  # accuracy is taken as an example
  ACCURACY = 0.0000001

  def calc(x, guess = 1.0)
    guess = improve(x, guess) until good_enought?(x, guess)
    guess
  end

  private

  def square(x)
    x * x
  end

  def qube(x)
    x * x * x
  end

  def good_enought?(x, guess)
    (qube(guess) - x).abs < ACCURACY
  end

  def improve(x, guess)
    ((x / square(guess)) + guess * 2) / 3
  end
end

# Qbrt.calc(x)
