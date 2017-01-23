;Question 1
;Logic
;The idea here is to append an atom / list recursively till we reach the very end of the element given to us
;1) We check to see if the list is NULL, if yes, we return the list. This is the return statement in the recursive call.
;2) Next we check if the element is the list, if yes, we recursively call the function for the first element, and for the remaining element
;3) If the element is an atom, we append the first element and recursively call the remaining list with the first element popped.

(define (reverse-general L)
  (cond
     ((Null? l) l) ;checking if the list is NULL
     ((list? (car l)) (append (reverse-general (cdr l)) (list (reverse-general (car l))))) ;if it's list, we append the first element by making a recursive call for the atom and call the function with the first element popped
     (else (append (reverse-general (cdr l)) (list (car L)))))) ;if an atom, we append the first element and call the function with the first element popped

(reverse-general '(a b c))



;Question 2
;Logic
;The idead is to check if the first element of the list is an interger.
;1) If null, we return 0
;2) If it is an Interger, we perform an addition of the first element and recursively call the function by popping the first element.
;3) Else we recursively call the function by popping the first element of the list

(define  (sum-up-numbers-simple L)
  (cond
    ((NULL? L) 0) ;checking if the list is NULL
    ((integer? (car L)) (+ (car L) (sum-up-numbers-simple (cdr L)))) ;checking if the first element is integer
    (else (sum-up-numbers-simple (cdr L))))) ;if not null or not an integer, remove the first element and call function

(sum-up-numbers-simple '(a 100 b (200) c 300 d) )
  

;Question 3
;Logic
;The idea here is to check if the first element of the list in an integer or a list itself.
;1) If null, return 0
;2) If list, perform an addition by calling the function with the first element as argument and recursively call the function with first elemetn poped
;3) If a number, add the first number and call the function with first element popped.
;4) Else, call the function recursively with the first element popped.

(define  (sum-up-numbers-general L)
  (cond
    ((NULL? L) 0) ;check if list is NULL.
    ((list? (car L)) (+(sum-up-numbers-general (cdr L))  (sum-up-numbers-general  (car L)))) ;check for list.
    ((integer? (car L)) (+ (car L) (sum-up-numbers-general (cdr L)))) ;check for number
    (else (sum-up-numbers-general (cdr L))))) ;else call the function again

(sum-up-numbers-general '(a (100 200) 300 (400 500)))