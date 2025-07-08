(define (square x) (* x x))

(define (sum_of_square_two_largest a b c)
	(cond
  	((and (> a b) (> c b)) (+ (square a) (square c)))
    ((and (> a c) (> b c)) (+ (square a) (square b)))
    (else (+ (square b) (square c)))
	)
)

(display (sum_of_square_two_largest 3 4 5))
(newline)