(define (simpson_integral f a b n)
  (define (y k) (f (+ a (* k h))))

  (define (iteration total_result k)
    (cond ((= k 0)
           (+ total_result (y k))
           total_result)
          ((even? k)
           (iteration (+ total_result (* 2 (y k))) (- k 1) h))
          (else
           (iteration (+ total_result (* 4 (y k))) (- k 1) h))))

  (* (/ h 3) (iteration (y n) n))
)

(define (cube x) (* x x x))

(simpson_integral cube 0 1 100)
(simpson_integral cube 0 1 1000)
(simpson_integral cube 0 1 10000)
