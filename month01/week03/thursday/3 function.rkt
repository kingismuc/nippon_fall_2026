;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3 function|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(list 70 82 95)
; яг ижил утга:
(cons 70 (cons 82 (cons 95 empty)))

(equal? (list 70 82 95) (cons 70 (cons 82 (cons 95 empty))))  ; #true
(cons 4 (cons 5 empty))
(cons "a" (cons "b"(cons "c" empty)))
(list 7 8)
(list)
; Тоо биш, шинэ list буцаах
;; double-all : List-of-numbers -> List-of-numbers
;; тоо бүрийг 2 дахин
(define (double-all number)
  (cond
    [(empty? number) empty]
    [else (cons (* 2 (first number))(double-all (rest number)))]))
(check-expect (double-all empty) empty)
(check-expect (double-all (list 1 2 3)) (list 2 4 6))


;Template хэвээр. Base case нь одоо empty, recursive case нь cons-оор шинэ list байгуулна.

;; add-ten-all : List-of-numbers -> List-of-numbers
(define (add-ten-all number)
  (cond
    [(empty? number) empty]
    [else (cons (+ 10 (first number))(add-ten-all (rest number)))]))
(check-expect (add-ten-all empty) empty)
(check-expect (add-ten-all (list 1 2 3)) (list 11 12 13))

;; only-positive : List-of-numbers -> List-of-numbers
;; зөвхөн эерэг тоонуудыг үлдээнэ (0 эерэг биш)
(define (only-positive number)
  (cond
    [(empty? number) empty]
    [(positive? (first number))
         (cons (first number)
         (only-positive (rest number)))]
    [else (only-positive (rest number))]))
(check-expect (only-positive empty) empty)
(check-expect (only-positive (list -2 0 5 9)) (list 5 9))

;; cap-at-100 : List-of-numbers -> List-of-numbers
;; 100-аас их оноог 100 болгоно. min ашиглаж болно.
(define (cap-at-100 numbers)
  (cond
    [(empty? numbers) empty]
    [else (if
           (<= (first numbers) 100)
           (cons (first numbers)(cap-at-100 (rest numbers)))
           (cons 100 (cap-at-100 (rest numbers))))]))
(check-expect (cap-at-100 (list 50 100 150)) (list 50 100 100))



