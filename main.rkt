#lang racket

; (duple n x): N X N -> List(N)
; returns a list containing n copies of x
; : n=0  -> ()
; : else -> (x . (duple n-1 x))
(define duple
  (lambda (n x)
    (if (<= n 0)
        (list)
        (cons x (duple (- n 1) x)))))
