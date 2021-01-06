; cube root extraction

(define (qbrt x)
  (define (square x)
    (* x x))
  (define (qube x)
    (* x x x))
  (define (qbrt-iter guess x)
    (define (good-enought? guess x)
      (< (abs (- (qube guess) x)) 0.00000000001))
    (define (improve guess x)
      (/ (+ (/ x (square guess))
            (* 2 guess))
         3))
    (if (good-enought? guess x)
        guess
        (qbrt-iter (improve guess x)
                   x)))
  (qbrt-iter 1.0 x))
