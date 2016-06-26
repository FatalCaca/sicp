(define (smallest-divisor n)
  (define (iteration n current_result)
    (cond ((> (square current_result) n) n)
          ((divides? current_result n) current_result)
          (else (iteration n (next_divisor current_result)))))

  (define (divides? divisor n)
    (= (remainder n divisor) 0))

  (define (next_divisor previous_divisor)
    (cond ((= previous_divisor 2) 3)
          (else (+ previous_divisor 2))))

  (iteration n 2))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)
