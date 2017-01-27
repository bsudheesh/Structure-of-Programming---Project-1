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
    ((number? (car L)) (+ (car L) (sum-up-numbers-simple (cdr L)))) ;checking if the first element is integer
    (else (sum-up-numbers-simple (cdr L))))) ;if not null or not an integer, remove the first element and call function

(sum-up-numbers-simple '(a 100 b 200 c 300 d) )
  

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
    ((number? (car L)) (+ (car L) (sum-up-numbers-general (cdr L)))) ;check for number
    (else (sum-up-numbers-general (cdr L))))) ;else call the function again

(sum-up-numbers-general '(a (100 200) (600) 300 (400 500)))

;Question 4
;Logic
;The idea here is to create a min-function that will find the minimum of a list. We get the minimum of the list and perfom following operations
; There is a min-function that returns the minimum of a list, if no minimum returns false.
; Is greater function that returns true if a > b, else false for any case.
; min-above-min function that returns value for the edge cases.
; min-above-min-helper-clasee that returns the minimum of the values that are maximum than L2.




;This function returns the minimum from a List. If no number, returns false;     
(define (min-helper-function L)
  (cond
    ((NULL? L) #f) ;check if the list is null, return false
    ((number? (car L)) ;if the first element is number
     (if (number? (min-helper-function (cdr L))) ;if we get a number at the end of the function
         (if (< (car L) (min-helper-function (cdr L))) ;if car L is less than the rest of the function, return car L, or else remove it and call the function recursively
             (car L)
             (min-helper-function (cdr L)))
         (car L))) ;return car L
    (else (min-helper-function (cdr L))))) ;if not number, remove it and call the function again





;This function is used to handle edge cases which include.
; 1) If L1 is null or L2 is null.
; 2) No number in L2.
; 3) Number in L2, but no number in L1
(define (min-above-min L1 L2)
  (cond
    ((NULL? L1) #f) ;if L1 is null, return false
    ((NULL? L2) (min-helper-function L1)) ;if L2 is null, return the minimum of L1
    (
     (not (min-helper-function L2)) ;if there is no number in L2, check following
     
        (cond
          ((number? (min-helper-function L1)) (min-helper-function L1)) ;If there is number in L1, return the minimum of L1
           
           (else #f) ;else return false
           )
        )
    (else ;if there is number in L2
     (if (number? (min-helper-function L1)) ;If there is number in L1, do the following
        ( min-above-min-helper-clasee L1 L2) ;If yes, this function returns the min of max of numbers greater than min of L2.
        #f; If no number in L2, return false
        ))
         
       
       
    ))

;This function checks if a number if greater than the other.
;If yes, return true, else false;
(define (is-greater m n)
  (if (number? m)
      (> m n)
      #f))

;This function is used to return the minimum of the maximum number in L1.
(define (min-above-min-helper-clasee L1 L2)
  
  (cond
    ((NULL? L1) #F) ;If the list L1 is null, return false
    ((NULL? (cdr L1)) ;If there is only one element in L1, check if the last number is greater than min of L2
     (if (is-greater (car L1) (min-helper-function L2)) ;if the number is greater than min of L2 return the number, else false
         (car L1)
         #f))
    
    ((is-greater (car L1) (min-helper-function L2)) ;If the first element of car L1 is greater than L2, do the following
     
     (cond
       (not (number? (min-above-min-helper-clasee (cdr L1) l2))
            (car L1))
       ((< (car L1) (min-above-min-helper-clasee (cdr L1) L2)) (car L1))
       (else (min-above-min-helper-clasee (cdr L1) L2))))
    
    (else (min-above-min-helper-clasee (cdr L1) L2)))) ;if the first element of l1 is not greater than L2, remove the number and recursively call function again.
      
    
                
(min-above-min '(a 400 b 200 c 300) '(a 200 b c 100 d))



