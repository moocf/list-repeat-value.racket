#lang racket

; (list.repeat-value n x): N X N -> List(N)
; returns a list containing n copies of x
; : n=0  -> ()
; : else -> (x . (list.repeat-value n-1 x))
(define list.repeat-value
  (lambda (n x)
    (if (<= n 0)
        (list)
        (cons x (list.repeat-value (- n 1) x)))))
