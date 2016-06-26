(define (fast-exp b n)
    (define (iteration b n result)
        (cond ((= n 0) result)
            ((even? n) (square (iteration b (/ n 2) result)))
            (else (iteration b (- n 1) (* result b))))
    )

    (iteration b n 1))


(fast-exp 6 2)
(fast-exp 2 3)
(fast-exp 4 5)
(fast-exp 10 3)
(fast-exp 4 4)
