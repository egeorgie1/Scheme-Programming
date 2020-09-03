#lang racket
(define (maximize lst)
  (define (helper-iter l max x)
    (cond [(null? l) max]
          [(> (abs ((car l) x)) (abs max)) (helper-iter (cdr l) ((car l) x) x)]
          [else (helper-iter (cdr l) max x)]))
  (lambda(x) (helper-iter (cdr lst) ((car lst) x) x)))

