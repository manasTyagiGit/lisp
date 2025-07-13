(define (good_enough prev curr)
    (> 0.0000000001 (abs (/ (- curr prev) curr)))           ; 10^-10 change is epsilon
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (improve_guess x guess)
    (average guess (/ x guess))
)

(define (sqrt_enh x guess)
    (if (good_enough guess (improve_guess x guess))
        guess
        (sqrt_enh x (improve_guess x guess))
    )
)   


(define (sqrt x) (sqrt_enh x 1.0))


;-------------------------------------------------------------------


(display (sqrt 9)) (newline)
(display (sqrt 1)) (newline)
(display (sqrt 125)) (newline)