#  multiplication by addition using recursion

def mult(a, b)
  if b.zero?
    0
  else
    a + mult(a, b - 1)
  end
end

# double(x) method doubles the number

def double(x)
  x + x
end

#  halve(x) method halves the number

def halve(x)
  x / 2
end

#  fast multiplication procedure using mult(a, b), double (x), halve (x) using recursion

module FastMult
  def self.calc(a, b)
    if b.zero?
      0
    elsif b == 1
      a
    elsif b.even?
      0 + mult(a + a, b / 2)
    else
      a + mult(a, b - 1)
    end
  end
end
