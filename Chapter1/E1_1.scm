(define a 3)
(define b (+ a 1))

(newline)
(display (+ a b (* a b)))
(newline)

(display (= a b))
(newline)

(display 
 (if (and (> b a) (< b (* a b)))
     b
     a))
(newline)