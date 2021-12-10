#lang sicp

; This program uses an if in order to decide
; which operator to use. if b > 0 then if
; evaluates a plus b. If b < 0 then if
; evaluates a minus b, thus always resulting
; in abs. addition
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))