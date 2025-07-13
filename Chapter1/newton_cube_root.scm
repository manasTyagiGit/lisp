(define (square x) 
    (* x x)    
)


(define (improve_guess x guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)


(define (good_enough prev curr)
    (> 0.0000000001 (abs (/ (- curr prev) prev)))
)


(define (cube_root_iter x guess)
    (if (good_enough guess (improve_guess x guess))
        guess
        (cube_root_iter x (improve_guess x guess))    
    )
)


(define (cube_root x) 
    (cube_root_iter x 1.0)
)

;--------------------------------------------------------------


(display (cube_root 81))(newline)

(display (cube_root 125))(newline)

(display (cube_root 1))(newline)