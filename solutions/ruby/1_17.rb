#  multiplication by addition using recursion

def mult(a, b)
  if b.zero?
    0
  else
    a + mult(a, b - 1)
  end
end

#  fast multiplication procedure using mult(a, b), double (x), halve (x) using recursion

module FastMult
  def self.calc(a, b)
    if b.zero?
      0
    elsif b == 1
      a
    elsif b.even?
      0 + calc(a + a, b / 2)
    else
      a + calc(a, b - 1)
    end
  end
end
