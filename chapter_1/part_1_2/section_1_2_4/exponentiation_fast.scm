;#lang sicp
(define (is_even x) (= (remainder x 2) 0))

(define (square x) (* x x))

(define (fast_expt b n)
  (cond ( (= n 0) 1) 
	( (is_even n) (square (fast_expt b (/ n 2))))
	;( (is_even n) (fast_expt (square b) (/ n 2)))  ;; Can make this process tail-recursive
	( else (* b (fast_expt b (- n 1))))
  )
)

(fast_expt 3 4)
(fast_expt 2 5)
(fast_expt 5 3)
(fast_expt 4 2)
