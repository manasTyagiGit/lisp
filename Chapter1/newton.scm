(define (square x) 
        (* x x)
)

(define (abs x)
    (if (< x 0)
        (- x)
        x
    )
)

(define (average x y)
    (/ (+ x y) 2.0)
) 

(define (improve-guess num guess)
    (average guess (/ num guess))
)

(define (good-enough? num guess)
    (< (abs (- (square guess) num)) 0.0001)     ; using 0.0001 as the standard error epsilon
)

(define (sqrt-newton num guess)
    (if (good-enough? num guess)   
        guess
        (sqrt-newton num (improve-guess num guess))
    )
)

(define (sqrt x)
        (sqrt-newton x 1.0)
)


(display (sqrt 9))(newline)
(display (sqrt 16))(newline)
(display (sqrt 137))(newline)
(display (sqrt 1000))(newline)

