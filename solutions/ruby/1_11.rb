# A function f is defined by the rule that:
# f(n) = n if n < 3
# f(n) = f(n - 1) + 2f(n  - 2) + 3f(n - 3) if n > 3.
# 1. Write a procedure that computes f by means of a recursive process.
# 2. Write a procedure that computes f by means of an iterative process.

# #1 recursive process

def fn_rec(n)
  if n < 3
    n
  else
    fn_rec(n - 1) + fn_rec(n - 2) + fn_rec(n - 3)
  end
end

# #2 iterative process

def fn_int(n)
  a, b, c = 0, 1, 2

  while n != 0
    a, b, c = b, c, a + b + c
    n -= 1
  end
  a
end
