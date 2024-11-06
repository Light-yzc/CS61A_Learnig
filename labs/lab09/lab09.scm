(define (over-or-under num1 num2) 
    (cond((< num1 num2) -1)
        ((= num1 num2) 0)
        (else 1)))

; (define (make-adder num) (define (f1 inc)(
;                                             (+ num inc))))
(define (make-adder num) (lambda (inc)
                                            (+ num inc)))

(define (adder2 n)((+ 2 n)))
(define (composed f g) (lambda(x)(f (g x))))

; (define (repeat f n) lambda(x)(cond ((= n 1) x)
;                                     ((else (* x ((repeat f (- n 1) x)))))))
(define (repeat f n) (if (< n 1)
                         (lambda (x) x)
                         (composed f (repeat f (- n 1)))))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
    (cond ((zero? a) b)
          ((zero? b) a)
          ((= (modulo (max a b) (min a b)) 0) (min a b)) 
          (else (gcd (min a b) (modulo (max a b) (min a b))))))
