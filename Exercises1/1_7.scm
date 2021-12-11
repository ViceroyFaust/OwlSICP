#lang sicp

(define (square x) (* x x))

;; The problem with the original good-enough?
;; is that with smaller numbers like 0.000025
;; the test value is too big and results in
;; wrong roots. With numbers bigger than 3 sig.
;; figs. it wastes instructions by overdoing the
;; computation

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (%error x expected)
  (/ (abs (- x expected))
     expected))

;; new-good-guess? tests %error in the
;; square of the guess. That way you can
;; set arbitrary precision for both large
;; and small numbers
(define (new-good-enough? guess x)
  (< (%error (square guess) x) 1e-12))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 1e-13)
(sqrt-iter 1.0 0.000025)
(sqrt-iter 1.0 12345678901234)
