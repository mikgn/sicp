; Pascal's triangle

; 1   1   1   1   1   1

; 1   2   3   4   5   6

; 1   3   6   10  15  21

; 1   4   10  20  35  56

; 1   5   15  35  70  126

; 1   6   21  56  126 252


(define (pascal x y)
  (cond ((or (= x 1) (= y 1)) 1)
        (else (+ (pascal x (- y 1))
                 (pascal (- x 1) y)))))
