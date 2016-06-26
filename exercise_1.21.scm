(define (smallest-divisor a)
  (define (iteration a counter)
    (cond ((> (square counter) a) a)
          ((divides? counter a) counter)
          (else (iteration a (+ 1 counter)))))

  (define (divides? divisor n)
    (= (remainder n divisor) 0))

  (iteration a 2))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)
