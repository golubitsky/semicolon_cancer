; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers
(define (square x) (* x x))
(define (sum-squares a b) (+ (square a) (square b)))
(define (f a b c) (cond ((and (< a b) (< a c)) (sum-squares b c))
                        ((and (< b a) (< b c)) (sum-squares a c))
                        (else (sum-squares a b))))

(= (f 1 2 3) (f 3 2 1) (f 2 3 1) 13)
