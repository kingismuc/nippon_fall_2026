;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum3 : Number Number Number -> Number

(define (sum3 num1 num2 num3)
  (+ num1 num2 num3))
(check-expect (sum3 80 90 70) 240)

;; average3 : Number Number Number -> Number
;; гурван тооны дундаж. sum3-г дуудна.

(define (average3 num1 num2 num3)
  (/ (sum3 num1 num2 num3) 3))
(check-expect (average3 80 90 70) 80)
(check-expect (average3 60 60 60) 60)
;; assignment-percent : Number Number -> Number
;; хийсэн ба нийт даалгавар → гүйцэтгэлийн хувь (total > 0)

(define (assignment-percent finished allproject)
  (* finished allproject))
(check-expect (assignment-percent 8 10) 80)
(check-expect (assignment-percent 7 10) 70)
(check-expect (assignment-percent 0 10) 0)
;; passing-average? : Number Number Number -> Boolean
;; average3 60 ба түүнээс дээш бол #t

(define (passing-average? num1 num2 num3)
  (and (>= (average3 num1 num2 num3) 60)(<= (average3 num1 num2 num3) 100)))
(check-expect (passing-average? 60 60 60) #t)
(check-expect (passing-average? 59 59 59) #f)
(check-expect (passing-average? 100 80 0) #t)   ; дундаж яг 60

;; good-attendance? : Number -> Boolean
;; ирц 80 ба түүнээс дээш бол #t
(define (good-attendance? attend)
  (and (>= attend 80)(<= attend 100)))
(check-expect (good-attendance? 80) #t)
(check-expect (good-attendance? 79) #f)

;; assignments-complete? : Number Number -> Boolean
;; assignment-percent 70 ба түүнээс дээш бол #t. assignment-percent-г дуудна.

(define (assignments-complete? finished allproject)
  (and (>= (assignment-percent finished allproject) 70)(<= (assignment-percent finished allproject) 100)))
(check-expect (assignments-complete? 7 10) #t)
(check-expect (assignments-complete? 6 10) #f)
(check-expect (assignments-complete? 0 10) #f)
;; eligible? : Number Number Number Number Number Number -> Boolean
;; s1 s2 s3 attendance completed total → гурван шалгуур бүгд үнэн бол #t

(define (eligible? s1 s2 s3 attend finished total)
  (and (passing-average? s1 s2 s3)(good-attendance? attend)(assignments-complete? finished total)))

(check-expect (eligible? 80 90 70 85 8 10) #t)
(check-expect (eligible? 80 90 70 79 8 10) #f)   ; ирц
(check-expect (eligible? 59 59 59 100 10 10) #f) ; оноо
(check-expect (eligible? 80 90 70 85 6 10) #f)   ; даалгавар

;; final-status : Number Number Number Number Number Number -> String
;; тэнцсэн бол "Eligible", үгүй бол "Not eligible"
(define (final-status s1 s2 s3 attend finished total)
  (if (eligible? s1 s2 s3 attend finished total) "Eligible" "Not eligible"))

(check-expect (final-status 80 90 70 85 8 10) "Eligible")
(check-expect (final-status 80 90 70 79 8 10) "Not eligible")
;; letter-grade : Number -> String
;; дундаж оноо → "A" "B" "C" "D" "F" (Мягмарын grade-тэй ижил дүрэм)
(define (letter-grade score)
  (cond
    [(>= score 90) "A"]
    [(>= score 80) "B"]
    [(>= score 70) "C"]
    [(>= score 60) "D"]
    [ else  "F"]))

(check-expect (letter-grade 90) "A")
(check-expect (letter-grade 89) "B")
(check-expect (letter-grade 80) "B")
(check-expect (letter-grade 79) "C")
(check-expect (letter-grade 60) "D")
(check-expect (letter-grade 59) "F")

;; student-grade : Number Number Number -> String
;; гурван оноо → үсгэн дүн. average3 ба letter-grade-г дуудна.
(define (student-grade s1 s2 s3)
  (letter-grade (average3 s1 s2 s3)))

(check-expect (student-grade 80 90 70) "B")
(check-expect (student-grade 100 90 80) "A")

(require 2htdp/image)

;; grade-color : Number -> String
;; дундаж оноо → өнгө: 90+ "green", 80–89 "blue", 70–79 "gold", 60–69 "orange", бусад "red"
(define (grade-color score)
  (cond
    [(>= score 90) "green"]
    [(>= score 80) "blue"]
    [(>= score 70) "gold"]
    [(>= score 60) "orange"]
    [else "red"]))
(check-expect (grade-color 90) "green")
(check-expect (grade-color 89) "blue")
(check-expect (grade-color 60) "orange")
(check-expect (grade-color 59) "red")
;; grade-badge : Number -> Image
;; дундаж оноо → өнгөт тойрог дээр цагаан үсгэн дүн.
;; grade-color, letter-grade-г дуудна.
(define (grade-badge score)
   (overlay (text (letter-grade score) 24 "white") (circle 30 "solid" (grade-color score))))

(check-expect (grade-badge 95) (overlay (text "A" 24 "white") (circle 30 "solid" "green")))
(check-expect (grade-badge 59) (overlay (text "F" 24 "white") (circle 30 "solid" "red")))

;; student-card : Number Number Number Number Number Number -> Image
;; s1 s2 s3 attendance completed total → тэмдэг, хажууд нь final-status-ийн текст.
;; average3, grade-badge, final-status-г дуудна.
(define (student-card s1 s2 s3 attend completed total)
  (beside (grade-badge (average3 (average3 s1 s2 s3) attend (assignment-percent completed total)))
                       (text (final-status s1 s2 s3 attend completed total) 20 "black")))
(check-expect (student-card 80 90 70 85 8 10)
              (beside (grade-badge 80) (text "Eligible" 20 "black")))

(check-expect (student-card 90 80 85 70 5 10)
              (beside (grade-badge 68) (text "Not eligible" 20 "black")))

(check-expect (passing-average? 60 60 60) #t)
(check-expect (passing-average? 59 59 59) #f)
(check-expect (letter-grade 90) "A")
(check-expect (letter-grade 89) "B")
(check-expect (letter-grade 80) "B")
(check-expect (letter-grade 79) "C")
(check-expect (good-attendance? 80) #t)
(check-expect (good-attendance? 79) #f)
(check-expect (assignments-complete? 7 10) #t)
(check-expect (assignments-complete? 6 10) #f)
(check-expect (assignment-percent 0 10) 0)
(check-expect (eligible? 80 90 70 85 8 10) #t)
(check-expect (final-status 80 90 70 79 8 10) "Not eligible")

;; honor-roll? : Number Number Number Number -> Boolean
;; s1 s2 s3 attendance: дундаж 90 ба түүнээс дээш, ирц 95 ба түүнээс дээш бол #t
(define (honor-roll? s1 s2 s3 attend)
  (and (>= (average3 s1 s2 s3) 90)(>= attend 95)))
(check-expect (honor-roll? 90 90 90 95) #t)
(check-expect (honor-roll? 90 90 90 94) #f)
(check-expect (honor-roll? 89 89 89 100) #f)

;; ineligibility-reason : Number Number Number Number Number Number -> String
;; Хэд хэдэн шалгуур унавал эхнийхийг нь буцаана: оноо → ирц → даалгавар.
;; Бүгд үнэн бол "Eligible".
(define (ineligibility-reason sum1 sum2 sum3 attend finished total)
  (cond
    [(not (passing-average? sum1 sum2 sum3)) "Low score"]
    [(not (good-attendance? attend)) "Low attendance"]
    [(not (assignments-complete? finished total)) "Missing assignments"]
    [else "Eligible"]))

(check-expect (ineligibility-reason 59 59 59 50 0 10) "Low score")
(check-expect (ineligibility-reason 80 90 70 79 0 10) "Low attendance")
(check-expect (ineligibility-reason 80 90 70 85 6 10) "Missing assignments")
(check-expect (ineligibility-reason 80 90 70 85 8 10) "Eligible")

;; average5 : Number Number Number Number Number -> Number
;; таван онооны дундаж
(define (average5 s1 s2 s3 s4 s5)
  (/ (+ s1 s2 s3 s4 s5) 5))
(check-expect (average5 60 70 80 90 100) 80)
