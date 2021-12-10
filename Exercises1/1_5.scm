#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
; In Applicative order this will result in an infinite loop
; since p will be substituted for itself for infinity.
; In Normal order this will evaluate 0 because it won't
; substitute until it reaches a variable name
(test 0 (p))