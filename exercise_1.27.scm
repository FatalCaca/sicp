(define (all_predecessors_congruent? n)
  (define (expmod base exposant mod)
    (cond ((= exposant 0) 1)
          ((even? exposant)
            (remainder (square (expmod base (/ exposant 2) mod))
                       mod))
          (else
            (remainder (* base (expmod base (- exposant 1) mod))
                       mod))))

  (define (iteration a)
    (cond ((= a 1) true)
          ((= a (expmod a n n)) (iteration (- a 1)))
          (else false)))

  (iteration (- n 1))
)

(all_predecessors_congruent? 100)
(all_predecessors_congruent? 561)
(all_predecessors_congruent? 2821)
(all_predecessors_congruent? 10000)
(all_predecessors_congruent? 97)
