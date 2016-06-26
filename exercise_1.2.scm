(define (sumOfSquare a b)
  (
   (+ (* a a) (* b b)
   )))

(define (coin a b c)
  (
    (cond ((and (< a b) (< a c)) (sumOfSquare b c))
          ((and (< b a) (< b c)) (sumOfSquare a c))
          ((and (< c b) (< c a)) (sumOfSquare a b))
    )
  )
)

(sumOfSquare 1 2)
