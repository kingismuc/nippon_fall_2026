;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; attendance-percent : Number Number -> Number
;; ирсэн өдөр, нийт өдөр (0-ээс их) → ирцийн хувь
(define (attendance-percent attend total)
  (/ attend (/ total 100)))
(check-expect (attendance-percent 18 20) 90)
(check-expect (attendance-percent 0 20) 0)

;; can-retake? : Number Number -> Boolean
;; оноо 60-аас бага, ирц 80 ба түүнээс дээш бол #t
(define (can-retake? score attend)
  (and (< score 60)(>= attend 80)))
(check-expect (can-retake? 59 80) #t)
(check-expect (can-retake? 60 80) #f)
(check-expect (can-retake? 59 79) #f)

;; final-label : Number Number -> String
;;   оноо >= 60 ба ирц >= 80   "pass"
;;   can-retake? үнэн бол         "retake"
;;   бусад                        "fail"
(define (final-label score attend)
  (cond
    [(and (>= score 60)(>= attend 80)) "pass"]
    [(can-retake? score attend) "retake"]
    [else "fail"]))

(check-expect (final-label 70 90) "pass")
(check-expect (final-label 50 85) "retake")
(check-expect (final-label 50 50) "fail")
(check-expect (final-label 70 50) "fail")

