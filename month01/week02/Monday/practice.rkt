;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;sergeeh 1
(check-expect(+ 3(* 4 5))23)
(check-expect(/ (+ 8 4)3)4)
;;sergeeh 2
(define(rectangle-area width height)
  (* width  height))
(check-expect (rectangle-area 4 5) 20)
(check-expect (rectangle-area 0 5) 0)
;;sergeeh 3
(define(rectangle-cost width height unit-price)
  (* (* width height)unit-price))
(check-expect (rectangle-cost 4 5 300) 6000)
(check-expect (rectangle-cost 2 3 100) 600)