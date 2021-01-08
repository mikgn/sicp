; A function f is defined by the rule that:
; f(n) = n if n < 3
; f(n) = f(n - 1) + 2f(n  - 2) + 3f(n - 3) if n > 3.
; 1. Write a procedure that computes f by means of a recursive process.
; 2. Write a procedure that computes f by means of an iterative process.

; #1 recursive process

(define (f n)
  (if (< n 3)
      n
      (+ (f(- n 1))
         (f(- n 2))
         (f(- n 3)))))

; #2 iterative process

(define (f n)
  (define (iter a b c counter)
    (if (= counter 0)
        a
        (iter b
              c
              (+ a b c)
              (- counter 1))))
  (iter 0 1 2 n))
