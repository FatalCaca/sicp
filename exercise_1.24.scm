(define (search-for-primes from amount)
  (define (fast-prime? n)
    (define (expmod base exposant mod)
      (cond ((= exposant 0) 1)
            ((even? exposant)
              (remainder (square (expmod base (/ exposant 2) mod))
                         mod))
            (else
              (remainder (* base (expmod base (- exposant 1) mod))
                         mod))))

    (define (fermat_test)
      (define (try_a_number_for_congruence a)
        (= a (expmod a n n)))

      (try_a_number_for_congruence (+ (random (- n 1)) 1)))

    (define (do_the_test counter)
      (cond ((= counter 0) true)
            ((fermat_test) (do_the_test (- counter 1)))
            (else false)))

    (do_the_test 1))

  (define (iteration current_number remaining_amount)
    (cond ((= remaining_amount 0) (runtime))
          ((fast-prime? current_number)
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
(search-for-primes 1000000000000000000000000000000000000000 3)
(search-for-primes 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 3)
(search-for-primes 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 3)
(search-for-primes 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 3)
