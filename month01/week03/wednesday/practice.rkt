;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; contains? : Number List-of-numbers -> Boolean
;; target list дотор байвал #t
(define (contains? req numb)
  (cond
    [(empty? req) #f]
    [(<= req numb) (+ 1 (contains? (rest numb)))]
    [else (contains? (rest numb))]))
(check-expect (contains? 5 empty) #f)
(check-expect (contains? 5 (cons 3 (cons 5 (cons 7 empty)))) #t)
(check-expect (contains? 4 (cons 3 (cons 5 empty))) #f
              
;; count-greater-than : List-of-numbers Number -> Number
;; limit-ээс ИХ (тэнцүү биш) тоонуудын тоо
(check-expect (count-greater-than empty 5) 0)
(check-expect (count-greater-than (cons 2 (cons 8 (cons 10 empty))) 5) 2)
(check-expect (count-greater-than (cons 5 (cons 6 empty)) 5) 1)   ; 5 тоологдохгүй

;; find-max : NEList-of-numbers -> Number
;; хамгийн их утга. max ашиглаж болно: (max 3 8) → 8
(check-expect (find-max (cons 70 empty)) 70)
(check-expect (find-max (cons 70 (cons 95 (cons 63 empty)))) 95)
(check-expect (find-max (cons -5 (cons -2 empty))) -2)

;; average : NEList-of-numbers -> Number
;; дундаж = sum / count-items. Хоосон биш тул 0-д хуваахгүй.
(check-expect (average (cons 80 empty)) 80)
(check-expect (average (cons 70 (cons 82 (cons 95 (cons 63 (cons 88 empty)))))) 79.6)