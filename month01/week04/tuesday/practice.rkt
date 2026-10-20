;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum-digits-3 : Number -> Number
;; гурван оронтой тооны цифрүүдийн нийлбэр. remainder, quotient ашигла.
(define (sum-digits-3 n)
  (+ (remainder n 10)
     (remainder (quotient n 10) 10)
     (quotient (quotient n 10) 10)))
(check-expect (sum-digits-3 507) 12)
(check-expect (sum-digits-3 100) 1)
(check-expect (sum-digits-3 999) 27)


;; quiz-gap : Student -> Number
;; quiz ба project онооны зөрүү (үргэлж эерэг). abs ашигла.
(define-struct student (name quiz project))

(define aki  (make-student "Aki"  80 90))
(define sora (make-student "Sora" 60 60))
(define mina (make-student "Mina" 95 91))
(define ren  (make-student "Ren"  45 55))

(define (quiz-gap student)
  (abs (- (student-quiz student)(student-project student))))
(check-expect (quiz-gap aki) 10)
(check-expect (quiz-gap sora) 0)
(check-expect (quiz-gap (make-student "Zul" 90 70)) 20)

;; count-a-scores : List-of-numbers -> Number
;; 90 ба түүнээс дээш оноо хэд байгааг тоолно
;; 2026-10-19
;; strict
;; Яаж би дараах зүйлсийг хадгалах вэ?
;; Хангай 44
;; Шоовдор 26

;; List
;; cons a(cons b)

(define-struct book (title author pages))
;; A Book is (make-book String String Number)
;; title : book name
;; author : zohiolch
;; pages : page number

(define b1 (make-book "Harry Poter" "Rowling" 320))
(define b2 (make-book "Бяцхан ханхүү" "Exupery" 96))
(define b3 (make-book "Нууц товчоо" "Тодорхойгүй" 300))

;; Template
(book-title b2)
(book-pages b3)
(book-author b1)

;; Асуулт: Ном 300-аас олон хуудастай бол #true буцаадаг function бич.
;; long-book? : Book -> Boolean

(define (long-book? b)
  (if (< 300 (book-pages b))
      #true
      #false))
(check-expect (long-book? b1) #true)
(check-expect (long-book? b2) #false)
(check-expect (long-book? b3) #false)   ; яг 300
(check-expect (long-book? (make-book "A" "B" 301)) #true)

;; Дасгал 1С: reading-days 
(define (reading-days b)
  (/ (book-pages b) 20))
(check-expect (reading-days b1) 16)
(check-expect (reading-days b2) 4.8)
(check-expect (reading-days b3) 15)

;; Exercise 02
(define-struct pet (name kind age))


(define bobo (make-pet "Бобо" "нохой" 3))
(define mimi (make-pet "Мими" "муур" 1))
(define tom  (make-pet "Том"  "муур" 12))

;; Дасгал 2B: cat?

;; Асуулт 2 муур мөн үед #true

(define (cat? pet)
  (string=? (pet-kind  pet) "муур"))

(check-expect (cat? mimi) #true)
(check-expect (cat? tom) #true)
(check-expect (cat? bobo) #false)

;; Дасгал 3
;; senior? : Pet -> Boolean

(define (senior? age)
  (>= (pet-age age)10 ))
(check-expect (senior? tom) #true)
(check-expect (senior? bobo) #false)
(check-expect (senior? (make-pet "Хар" "нохой" 10)) #true)
(check-expect (senior? (make-pet "Цагаан" "муур" 9)) #false)
(define (count-a-scores score)
  (cond
    [(empty? score) 0]
    [(<= 90 (first score))
     (+ 1 (count-a-scores (rest score)))]
    [else (count-a-scores (rest score))]))

(check-expect (count-a-scores empty) 0)
(check-expect (count-a-scores (list 90 89 100)) 2)

(define (pet-intro pet)
  (string-append (pet-name pet) " бол " (number->string (pet-age pet))  " настай " (pet-kind pet)))
(check-expect (pet-intro bobo) "Бобо бол 3 настай нохой")
(check-expect (pet-intro mimi) "Мими бол 1 настай муур")
(check-expect (pet-intro tom) "Том бол 12 настай муур")

;;EX03
(define-struct product (name price qty))

(define pen      (make-product "Үзэг"   500   40))
(define notebook (make-product "Дэвтэр" 1500  0))
(define bag      (make-product "Цүнх"   45000 3))
;; Асуулт: Доорх function тус бүр нэг алдаатай. Run дарахаас өмнө алдааг олж, засаад тестүүдийг давуул.

;; stock-value : Project -> Number ; үнэ х тоо

(define (stock-value p)
  (* (product-price p)(product-qty p)))

;; in-stock? : Product -> Boolean  ; тоо > 0

(define (in-stock? p)
  (> (product-qty p) 0))

;; price-with-tax : Product -> Number ; НӨАТ 10% нэмсэн үнэ

(define (price-with-tax p)
  (* (product-price p) 1.1))

;; Хүлээгдэж буй үр дүн

(check-expect (stock-value pen) 20000)
(check-expect (stock-value bag) 135000)
(check-expect (stock-value notebook) 0)
(check-expect (in-stock? pen) #true)
(check-expect (in-stock? bag) #true)
(check-expect (in-stock? notebook) #false)
(check-expect (price-with-tax pen) 550)
(check-expect (price-with-tax notebook) 1650)
(check-expect (price-with-tax bag) 49500)


;; Exercie04
(require 2htdp/image)

(define-struct ball (radius color))

;; A Ball is (make-ball Number String)
;; radius : радиус (px)
;; color : өнгө, ж: "red"

(define red-ball (make-ball 20 "red"))
(define big-blue (make-ball 50 "blue"))
(define tiny (make-ball 5 "green"))

(define (draw-ball ball)
  (circle (ball-radius ball) "solid" (ball-color ball)))

(check-expect (draw-ball red-ball) (circle 20 "solid" "red"))
(check-expect (draw-ball big-blue) (circle 50 "solid" "blue"))

;; Exercise04B
;; Асуулт: Хоёр бөмбөг авна. Эхний бөмбөг хоёр дахиасаа том бол #true буцаа.

;;bigger? : Ball Ball -> Boolean
;; Хүлээгдэж буй үр дүн:
(define (bigger? ball1 ball2)
  (> (ball-radius ball1)(ball-radius ball2)))
(check-expect (bigger? big-blue red-ball) #true)
(check-expect (bigger? red-ball tiny) #true)
(check-expect (bigger? tiny red-ball) #false)
(check-expect (bigger? red-ball red-ball) #false)

(define (ball-in-box ball)
  (overlay (draw-ball ball)(square (+ (* (ball-radius ball) 2) 10) "outline" "black")))

(check-expect (ball-in-box red-ball)
              (overlay (circle 20 "solid" "red")(square 50 "outline" "black")))

;;Exercise05

;; Жишээ 5: game (struct )
;; Хөлбөмбөгийн тоглолт бүрт гэрийн баг, зочин баг, гэрийн багийн гоол, зочин багийн гоол гэсэн 4 мэдээлэл бий.

;; Дасгал 5А: struct, data definition, жишээ , template
;; Асуулт: Struct, data definition, 3 жишээ (хожсон / хожигдсон / тэнцсэн), template бич.
;; Талбаруудын нэр яг home, away, home-goals, away-goals байх ёстой.


(define-struct game(home away home-goals away-goals))
(define g1 (make-game "Монгол" "Орос" 1 2))
(define g2 (make-game "Япон" "Солонгос" 1 3))
(define g3 (make-game "Тайланд" "Вейтнам" 2 1))


(check-expect (game? g1) #true)
(check-expect (game-home g1) "Монгол")
(check-expect (game-away g2) "Солонгос")
(check-expect (game-away-goals g2) 3)

;; Асуулт: Нийт гоол
;; total-goals : Game -> Number
(define (total-goals game)
  (+ (game-away-goals game) (game-home-goals game)))

(check-expect (total-goals g1) 3)
(check-expect (total-goals g2) 4)
(check-expect (total-goals g3) 3)
(check-expect (total-goals (make-game "A" "B" 0 0)) 0)

(define (winner game)
  (cond
    [(> (game-home-goals game)(game-away-goals game)) (game-home game)]
    [(< (game-home-goals game)(game-away-goals game)) (game-away game)]
    [else "Тэнцээ"]))
(check-expect (winner g1) "Орос")
(check-expect (winner g2) "Солонгос")
(check-expect (winner g3) "Тайланд")
(check-expect (winner (make-game "A" "B" 0 0 )) "Тэнцээ")

;; score-line : Game -> String

;; Хүлээгдэж буй үр дүн:

(define (score-line game)
  (string-append (game-home game)" "(number->string (game-home-goals game)) " : "
                 (number->string (game-away-goals game))" "(game-away game)))
(check-expect (score-line g1) "Монгол 1 : 2 Орос")
(check-expect (score-line g2) "Япон 1 : 3 Солонгос")
(check-expect (score-line g3) "Тайланд 2 : 1 Вейтнам")

;; Exercise06
;;

;; A student is (make-student (string number number)
;; name : сурагчийн нэр
;; quiz : quiz оноо , 0-100
;; project : project оноо, 0-100


(define (final-score student)
  (+ (* (student-quiz student) 0.4)(* (student-project student) 0.6)))
(check-expect (final-score aki) 86)
(check-expect (final-score sora) 60)
(check-expect (final-score mina) 92.6)
(check-expect (final-score ren) 51)
(check-expect (final-score (make-student "Zero" 0 0)) 0)

;; Exercise06B
(define (passed? student)
  (>= (final-score student) 60))
(check-expect (passed? aki) #true)
(check-expect (passed? sora) #true)
(check-expect (passed? mina) #true)
(check-expect (passed? ren) #false)
(check-expect (passed? (make-student "Uka" 100 34)) #true)
(check-expect (passed? (make-student "Bat" 100 33)) #false)

;; letter-grade : Number -> String
(define (letter-grade n)
  (cond [(>= n 90) "A"]
        [(>= n 80) "B"]
        [(>= n 70) "C"]
        [(>= n 60) "D"]
        [else "F"]))

;; student-grade : Student -> String
;; эцсийн онооны үсгэн үнэлгээ
(define (student-grade student)
  (letter-grade (final-score student)))
(check-expect (student-grade aki) "B")
(check-expect (student-grade sora) "D")
(check-expect (student-grade mina) "A")
(check-expect (student-grade ren) "F")
(check-expect (student-grade (make-student "Nine" 90 90)) "A")

;; rename : Student String -> Student
(define (rename s new-name)
  (make-student new-name
                (student-quiz s)
                (student-project s)))

;; add-bonus : Student Number -> Student
;; project оноонд bonus нэмнэ, гэхдээ 100-аас хэтрэхгүй (min ашигла)
(define (add-bonus student bonus)
  (make-student (student-name student)(student-quiz student)(min (+ (student-project student) bonus) 100)))
(check-expect (add-bonus aki 5) (make-student "Aki" 80 95))
(check-expect (add-bonus mina 20) (make-student "Mina" 95 100))
(check-expect (add-bonus ren 0) ren)   

;; retake-quiz : Student Number -> Student
;; quiz-ийг дахин өгсөн: шинэ оноо их бол түүнийг, үгүй бол хуучныг үлдээнэ (max)
(define (retake-quiz student score)
  (make-student (student-name student)(max (student-quiz student) score)(student-project student)))
(check-expect (retake-quiz ren 70) (make-student "Ren" 70 55))
(check-expect (retake-quiz aki 50) aki)

;; card-color : Student -> String
;; тэнцсэн бол "green", үгүй бол "red"
(define (card-color student)
  (if (>= (final-score student) 60)
      "green"
      "red"))
(check-expect (card-color aki) "green")
(check-expect (card-color ren) "red")

;; student-card : Student -> Image
;; нэр (18, хар), доор нь үсгэн үнэлгээ (24, card-color), card-color хүрээ (120 × 70)
(define (student-card student)
  (overlay (above (text (student-name student) 18 "black") (text (student-grade student) 24 (card-color student)))
                  (rectangle 120 70 "outline" (card-color student))))
(check-expect (student-card aki)
              (overlay (above (text "Aki" 18 "black") (text "B" 24 "green"))
                       (rectangle 120 70 "outline" "green")))
(check-expect (student-card ren)
              (overlay (above (text "Ren" 18 "black") (text "F" 24 "red"))
                       (rectangle 120 70 "outline" "red")))
