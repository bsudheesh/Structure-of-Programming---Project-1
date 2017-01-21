;Question 1

(define (reverse-general L)
  (cond
     ((Null? l) l)
     ((list? (car l)) (append (reverse-general (cdr l)) (list (reverse-general (car l)))))
     (else (append (reverse-general (cdr l)) (list (car L))))))



   
       
(reverse-general '(1 (2 3) (4 (a (b (c d))))) )
  