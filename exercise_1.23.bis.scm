(define (search-for-primes from amount)
  (define (prime? n)
    (= (smallest-divisor n) n))

  (define (smallest-divisor n)
    (define (iteration n current_result)
      (cond ((> (square current_result) n) n)
            ((divides? current_result n) current_result)
            (else (iteration n (next_divisor current_result)))))

    (define (next_divisor previous_divisor)
      (cond ((= previous_divisor 2) 3)
            (else (+ previous_divisor 2))))

    (iteration n 2))

  (define (divides? divisor n)
    (= (remainder n divisor) 0))

  (define (iteration current_number remaining_amount)
    (cond ((= remaining_amount 0) (runtime))
          ((prime? current_number)
            (newline)
            (display current_number)
            (iteration (+ current_number 1) (- remaining_amount 1)))
          (else
            (iteration (+ current_number 1) remaining_amount))))

  (- (iteration from amount) (runtime))
)

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)
(search-for-primes 10000000 3)
(search-for-primes 100000000 3)
(search-for-primes 1000000000 3)
(search-for-primes 10000000000 3)
(search-for-primes 100000000000 3)
(search-for-primes 1000000000000 3)
(search-for-primes 10000000000000 3)
