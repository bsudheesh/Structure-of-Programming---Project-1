;Question 1

(define (reverse-general L)
  (cond
     ((Null? l) l)
     (else (append (reverse-general (cdr l)) (list (car L))))))
   
       
(reverse-general '(a b (c (d e)) f))
  