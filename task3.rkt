#lang racket
(define (encode lst)
  (define (helper-iter current l counter result)
    (cond [(null? l) (cons (list current (+ counter 1)) result)]
          [(equal? current (car l))
            (helper-iter (car l) (cdr l) (+ counter 1) result)]
       [else (helper-iter (car l) (cdr l) 0 (cons (list current (+ counter 1)) result))]))

  (if (null? lst) '() (reverse (helper-iter (car lst) (cdr lst) 0 '()))))

