;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; count-zeros : List-of-numbers -> Number
;; 0-ийн тоо
(define (count-zeros numb)
  (cond
    [(empty? numb) 0]
    [(= (first numb) 0) (+ 1 (count-zeros (rest numb)))]
    [else (count-zeros (rest numb))]))
(check-expect (count-zeros empty) 0)
(check-expect (count-zeros (cons 0 (cons 5 (cons 0 empty)))) 2)

;; all-positive? : List-of-numbers -> Boolean
;; бүх тоо эерэг бол #t. Хоосон list-д эерэг биш тоо байхгүй тул #t.

(define (all-positive? numb)
  (cond
    [(empty? numb) #t]
    [else (if (positive? (first numb))
              (all-positive? (rest numb))
              #false )]))

(check-expect (all-positive? empty) #t)
(check-expect (all-positive? (cons 1 (cons 2 empty))) #t)
(check-expect (all-positive? (cons 1 (cons 0 empty))) #f)

(require 2htdp/image)

;; stack-all : List-of-images -> Image
;; бүх зургийг дээрээс доош тавина
(define (stack-all img)
  (cond
    [(empty? img) empty-image]
    [else (above (first img)(stack-all (rest img)))]))

(check-expect (stack-all empty) empty-image)
(check-expect (stack-all (cons (circle 10 "solid" "red") (cons (circle 10 "solid" "blue") empty)))
              (above (circle 10 "solid" "red") (circle 10 "solid" "blue")))

