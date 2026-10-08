;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; days-to-hours : Number -> Number
(define (days-to-hours day)
  (* day 24))
(check-expect (days-to-hours 2) 48)

;; days-to-seconds : Number -> Number
;; days-to-hours, hours-to-seconds-г дуудна
(define (hours-to-minute hour)
  (* hour 60))
(define (hours-to-seconds hour)
  (* (hours-to-minute hour) 60))
(define (days-to-seconds day)
  (hours-to-seconds (days-to-hours day)))
(check-expect (days-to-seconds 1) 86400)
;; outside-range? : Number -> Boolean
;; n нь 1–10-ийн гадна бол #t
(define (in-range? num)
  (and (<= num 10)(>= num 1)))
(define (outside-range? num)
  (not (in-range? num)))
(check-expect (outside-range? 0) #t)
(check-expect (outside-range? 1) #f)
(check-expect (outside-range? 10) #f)
(check-expect (outside-range? 11) #t)
;; grade-change : Number Number -> String
;; хуучин оноо, шинэ оноо → "up", "same", "down"
(define (grade-change old new)
  (cond
    [(< old new)"up"]
    [(> old new)"down"]
    [else "same"]))
(check-expect (grade-change 70 80) "up")
(check-expect (grade-change 80 80) "same")
(check-expect (grade-change 90 80) "down")
