#lang sicp

;; The example code in the exercise will not work
;; because the if statement of the language itself
;; executes differently than a procedure. It will
;; be stuck in an infinite loop, because every
;; procedure call will be executed rather than the
;; one chosen by the predicate

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))