; square root extraction

(define (sqrt x)
  (define (average x y) (/ (+ x y) 2))
  (define (square x) (* x x))
  (define (sqrt-iter guess)
    (define (good-enought? guess)
      (< (abs (- (square guess) x)) 0.000000000000001))
    (define (improve guess)
      (average guess (/ x guess)))
    (if (good-enought? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
