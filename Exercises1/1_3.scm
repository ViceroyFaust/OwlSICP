#lang sicp

(define (square x) (* x x))

(define (max x y)
  (if (> x y) x y))

(define (squareMax x y z)
  (+ (square (max x y))
     (square (max y z))))

; Testing
(squareMax 6 3 5)
(squareMax 3 5 6)
(squareMax 6 5 3)
(squareMax 2 2 2)