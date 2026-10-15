;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname score-analyzer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 2 жишээ list. Эхнийх нь бүгд тэнцсэн, хоёр дахь нь тэнцээгүй оноотой.
(define scores (list 70 82 95 63 88))
(define mixed-scores (list 40 60 72 58 100))
;; total : List-of-numbers -> Number
(define (total score)
  (cond
    [(empty? score) 0]
    [else (+ (first score)(total (rest score)))]))
(check-expect (total empty) 0)
(check-expect (total scores) 398)

;; count-scores : List-of-numbers -> Number
(define (count-scores score)
  (cond
    [(empty? score) 0]
    [else (+ 1 (count-scores (rest score)))]))
(check-expect (count-scores empty) 0)
(check-expect (count-scores scores) 5)

;; average : NEList-of-numbers -> Number
;; total, count-scores-г дуудна. Хоосон list дээр дуудахгүй (NEList).
(define (average scores)
  (/ (total scores)(count-scores scores)))
(check-expect (average scores) 79.6)
(check-expect (average mixed-scores) 66)

;; highest : NEList-of-numbers -> Number
(define (highest score)
  (cond
  [(empty? (rest score)) (first score)]
  [else (max (first score)(highest (rest score)))]))
(check-expect (highest (list 63)) 63)
(check-expect (highest scores) 95)
(check-expect (highest mixed-scores) 100)



;; count-passing : List-of-numbers -> Number
;; 60 ба түүнээс дээш онооны тоо
(define (count-passing scores)
  (cond
    [(empty? scores) 0]
    [else (if
           (<= 60 (first scores))
           (+ 1 (count-passing (rest scores)))
           (count-passing (rest scores)))]))
(check-expect (count-passing scores) 5)
(check-expect (count-passing mixed-scores) 3)
(check-expect (count-passing (list 60 59)) 1)    ; хил

;; count-failing : List-of-numbers -> Number
;; 60-аас бага онооны тоо
(define (count-failing scores)
  (cond
    [(empty? scores) 0]
    [else (if
           (> 60 (first scores))
           (+ 1 (count-failing (rest scores)))
           (count-failing (rest scores)))]))
(check-expect (count-failing scores) 0)
(check-expect (count-failing mixed-scores) 2)

;; passing-scores : List-of-numbers -> List-of-numbers
;; зөвхөн тэнцсэн оноонууд
(define (passing-scores scores)
  (cond
    [(empty? scores) empty]
    [else (if
           (>= (first scores) 60)
           (cons (first scores)(passing-scores (rest scores)))
           (passing-scores (rest scores)))]))
(check-expect (passing-scores mixed-scores) (list 60 72 100))
(check-expect (passing-scores (list 10 20)) empty)



;; score-bars : List-of-numbers -> Image
;; оноо бүрийг 2-р долоо хоногийн score-bar-аар (rectangle оноо 20 "solid" "blue")
;; дээрээс доош тавина. Хоосон list → empty-image.
(require 2htdp/image)
(define (score-bars scores)
  (cond
    [(empty? scores) empty-image]
    [else (above (rectangle (first scores) 20 "solid" "blue")(score-bars (rest scores)))]))
(check-expect (score-bars empty) empty-image)
(check-expect (score-bars (list 80 60))
              (above (rectangle 80 20 "solid" "blue") (rectangle 60 20 "solid" "blue")))