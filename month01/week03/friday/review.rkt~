;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; scale-all : List-of-numbers Number -> List-of-numbers
;; тоо бүрийг factor-оор үржүүлнэ
(define (scale-all number factor)
  (cond
    [(empty? number) empty]
    [else (
           cons(* factor (first number))(scale-all (rest number) factor))]))
(check-expect (scale-all empty 10) empty)
(check-expect (scale-all (list 1 2) 10) (list 10 20))

;; best-grade : NEList-of-numbers -> String
;; хамгийн их онооны үсгэн дүн. Пүрэвийн highest, 2-р долоо хоногийн letter-grade-г дууд.
(define (letter-grade score)
  (cond
    [(<= 90 score) "A"]
    [(<= 80 score) "B"]
    [(<= 70 score) "C"]
    [(<= 60 score) "D"]
    [else "F"]))
(define (highest score)
  (cond
    [(empty? (rest score))(first score)]
    [else (max (first score)(highest (rest score)))]))
    
(define (best-grade score)
  (cond
    [(empty? score) 0]
    [else (letter-grade (highest score))]))
(check-expect (best-grade (list 70 95)) "A")
(check-expect (best-grade (list 59)) "F")

;; badge-row : List-of-numbers -> Image
;; оноо бүрийг 2-р долоо хоногийн pass-fail-badge-аар (60+ ногоон, бусад улаан, радиус 20) зүүнээс баруун тийш
(require 2htdp/image)
(define (pass-or-fail score)
    (if (>= score 60)
      "green"
      "red"))
(define (pass-fail-badge score)
  (circle 20 "solid" (pass-or-fail score)))

(define (badge-row score)
  (cond
    [(empty? score) empty-image]
    [else (beside (pass-fail-badge (first score))(badge-row(rest score)))]))
(check-expect (badge-row empty) empty-image)
(check-expect (badge-row (list 60 59))
              (beside (circle 20 "solid" "green") (circle 20 "solid" "red")))
