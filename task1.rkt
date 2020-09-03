#lang racket
(define (to-decimal x k)
(define (helper-to-decimal number sum base)
  (if (= (quotient number 10) 0) (+ sum (* (remainder number 10) base))
                   (helper-to-decimal (quotient number 10) (+ sum (* (remainder number 10) base)) (* base k))))
  (helper-to-decimal x 0 1))

(define (decimal-to d n)
  (define (helper-decimal-to decnum sum base)
    (if (= (quotient decnum n) 0) (+ sum (* (remainder decnum n) base))
                   (helper-decimal-to (quotient decnum n) (+ sum (* (remainder decnum n) base)) (* base 10))))
  (helper-decimal-to d 0 1))

(define (convert x k n)
  (define dec (to-decimal x k))
  (decimal-to dec n))

