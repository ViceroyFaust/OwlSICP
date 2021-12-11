#lang sicp

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (%error x expected)
  (/ (abs (- x expected))
     expected))

(define (good-enough? guess x)
  (< (%error (cube guess) x) 1e-5))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(cbrt-iter 1.0 8)
(cbrt-iter 1.0 729)
(cbrt-iter 1.0 2248091)
(cbrt-iter 1.0 8e6)
(cbrt-iter 1.0 1e9)
(cbrt-iter 1.0 1e12)