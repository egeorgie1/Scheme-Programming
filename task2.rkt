#lang racket
(define (sum-numbers str)
  (define l (string->list str))
  (define ll (map (lambda(x) (if (char-numeric? x) (- (char->integer x) 48) #f)) l))
  
  (define (helper sum current-sum lst)
    (cond[(null? lst) (+ sum current-sum)]
         [(car lst) (helper sum (+ (* current-sum 10) (car lst)) (cdr lst))]
         [else (helper (+ sum current-sum) 0 (cdr lst))]))

  (helper 0 0 ll))

