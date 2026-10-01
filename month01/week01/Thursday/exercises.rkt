;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercises) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 01
(+ 8 6)
;; Exercise 02
(- 12 5)
;; Exercise 03
(* 4 9)
;; Exercise 04
(/ 32 8)
;; Exercise 05
 (+ 15 25)
;; Exercise 06
(* 3(+ 6 4))
;; Exercise 07
(+ 7 12 5)
;; Exercise 08
(/ (- 20 5)3)
;; Exercise 09
(- 50(* 4 6))
;; Exercise 10
(* (+ 8 2) ( - 12 7))
;; Exercise 11
(+ (* 3 4 ) (/ 10 2))
;; Exercise 12
(/ (*(+ 10 5)(- 12 4))2)
;; Exercise 13
(* (- 20 ( * 3 4 )) 2)
;; Exercise 14
(- (* 5 5) (+ 4 6))
;; Exercise 15
(- 100 (*(+ 5 3)(+ 2 4)))
;; Exercise 16
(define price 80)
(define quantity 4)
(* price quantity)
;; Exercise 17
;; (define width 12)
;; (define height 5)
;; +(* 2 width)(* 2 height))
;; Exercise 18
(define radius 10)
(define pii 3.14)
(* radius radius pii)
;; Exercise 19
(define base 8)
(define height 6)
(/(* base height) 2)
;; Exercise 20
(define original-price 100)
(define discount-rate 0.2)
(- original-price (* original-price discount-rate))
;; Exercise 21
(define celsius 25)
(+ 32(* celsius 1.8))
;; Exercise 22
(define item-count 5)
(define item-price 15)
(define tax-rate 0.1)
(* (* item-count item-price)(+ 1 tax-rate))
;; Exercise 23
;;(define a 3)
;;(define b 4)
;;(sqrt (+ (* a a)(* b b)))

;; Exercise 24
(/ (* (+ 2 3) 4) 2)
;; Exercise 25
;;(define principal 1000)
;;(define rate 0.05)
;;define time 3)
;;(* principal time rate)
;; Exercise 26
(define principal 1000)
(define rate 0.05)
(define time 3)
(* principal (+ 1 (* rate time)))
;; Exercise 27
;(define a 10)
;(define b 20)
;(define c 30)
;(/ ( + a b c ) 3)
;; Exercise 28
(define x1 2)
(define y1 3)
(define x2 6)
(define y2 6)
(sqrt ( + (sqr(- x2 x1))(sqr(- y2 y1))))   
;; Exercise 29
(define x 3)
(+ (-(* 3 (sqr x)) (* 5 x)) 2)

;; Exercise 30
(define a 5)
(define b 12)
(define c 13)
(* 2( +(* a b) (* b c ) (* a c)))