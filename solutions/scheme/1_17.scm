; multiplication by addition using recursion

(define (* a b)
  (if (or (= a 0) (= b 0))
      0
      (+ a (* a (- b 1)))))

; (double x) procedure doubles the number

(define (double x)
  (+ x x))

; (halve x) procedure halves the number

(define (halve x)
  (/ x 2))

; fast multiplication procedure using (* a b), (double x), (halve x) using recursion

(define (fast-mult a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (cond ((or (= a 0) (= b 0)) 0)
        ((= b 1) a)
        ((even? b) (+ 0 (fast-mult (double a) (halve b))))
        (else (+ a (* a (- b 1))))))
