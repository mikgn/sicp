# fast exponentiation using iteration

module FastExpt
  def self.calc(number, exponent)
    accumulation = 1

    if exponent.zero?
      accumulation
    else
      until exponent.zero?
        if exponent.even?
          number **= 2
          exponent /= 2
        else
          accumulation *= number
          exponent -= 1
        end
      end
    end
    accumulation
  end
end
