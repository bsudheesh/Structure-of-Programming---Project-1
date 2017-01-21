;Question 1
;The idea here is to append an atom / list recursively till we reach the very end of the element given to us
;We check to see if the list is NULL, if yes, we return the list. This is the return statement in the recursive call.
;Next we check if the element is the list, if yes, we recursively call the function for the first element, and for the remaining element
;If the element is an atom, we append the first element and recursively call the remaining list with the first element popped.
(define (reverse-general L)
  (cond
     ((Null? l) l) ;checking if the list is NULL
     ((list? (car l)) (append (reverse-general (cdr l)) (list (reverse-general (car l))))) ;if it's list, we append the first element and call the function with the first element popped
     (else (append (reverse-general (cdr l)) (list (car L)))))) ;if an atom, we append the first element and call the function with the first element popped



   
       
(reverse-general '(a b c))
  