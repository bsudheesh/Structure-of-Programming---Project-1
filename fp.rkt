;Question 1
;The idea here is to append an atom / list recursively till we reach the very end of the element given to us
;We check to see if the list is NULL, if yes, we return the list. This is the return statement in the recursive call.
;Next we check if the element is the list, if yes, we recursively call the function for the first element, and for the remaining element
;If the element is an atom, we append the first element and recursively call the remaining list with the first element popped.

(define (reverse-general L)
  (cond
     ((Null? l) l) ;checking if the list is NULL
     ((list? (car l)) (append (reverse-general (cdr l)) (list (reverse-general (car l))))) ;if it's list, we append the first element by making a recursive call for the atom and call the function with the first element popped
     (else (append (reverse-general (cdr l)) (list (car L)))))) ;if an atom, we append the first element and call the function with the first element popped



   
       
(reverse-general '(a b c))

;Question 2
; Write a function (sum-up-numbers-general L). L is a list, which may contain
;as elements numbers and non-numbers. The result of the function is the sum of all the numbers
;(including those in nested lists) in L. If there are no such numbers, the result is zero. For
;example, the result of (sum-up-numbers-general ‘(a b 1 (2 c (3)) d))
;should be 6.

(define  (sum-up-numbers-general L)
  (cond
    ((NULL? L) 0)
    (number? (car L) (+ (car L) (sum-up-numbers-general (cdr L))))
    (else 0)))

(sum-up-numbers-general '(1 2 3))
  
  