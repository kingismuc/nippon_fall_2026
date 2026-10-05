;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define(square x)
  (* x x))
(define (sum-of-squares a b)
  (+ (square a)(square b)))
(sum-of-squares 3 4)

(check-expect (square 5) 25)

(define(bytes-to-bits byte)
  (* byte 8))
(check-expect (bytes-to-bits 1)8)
(check-expect (bytes-to-bits 3)24)

(define(kib-to-bytes kib)
  (* kib 1024))
(check-expect (kib-to-bytes 1) 1024)
(check-expect (kib-to-bytes 2) 2048)

(define(kib-to-bits kib)
  (bytes-to-bits(kib-to-bytes kib)))
(check-expect (kib-to-bits 1) 8192)
(check-expect (kib-to-bits 2) 16384)

;; item-total : Number Number -> Number
;; нэгж үнэ ба тоо ширхэгээс нийт үнэ
(define(item-total item_price item_count)
  (* item_price item_count))

(check-expect (item-total 5000 3) 15000)
(check-expect (item-total 1200 0) 0)

;; discount-amount : Number Number -> Number
;; нийт үнэ ба хувиас хөнгөлөлтийн хэмжээ.
;; Хувийг бүхэл тоогоор өгнө: 10 гэвэл 10% (0.1 биш).
(define(discount-amount total_price discount)
  (* total_price (/ discount 100)))

(check-expect (discount-amount 15000 10) 1500)
(check-expect (discount-amount 15000 0) 0)

;; final-price : Number Number Number -> Number
;; нэгж үнэ, тоо ширхэг, хувь → хөнгөлөлт хассан үнэ.
;; item-total, discount-amount-г дуудна.
(define(final-price item_price item_count discount)
  (- (item-total item_price item_count)
     (discount-amount (item-total item_price item_count) discount)))
  
(check-expect (final-price 5000 3 10) 13500)
(check-expect (final-price 5000 3 0) 15000)


;; sum3 : Number Number Number -> Number
;; гурван тооны нийлбэр
(define(sum3 num1 num2 num3)
  (+ num1 num2 num3))

(check-expect (sum3 10 20 30) 60)

;; average3 : Number Number Number -> Number
;; гурван тооны дундаж. sum3-г дуудна.
(define(average3 num1 num2 num3)
  (/ (sum3 num1 num2 num3)3))

(check-expect (average3 60 80 100) 80)
(check-expect (average3 0 0 90) 30)

(check-expect (> 10 5) #t)
(check-expect (= (+ 2 3) 5) #t)
(check-expect (>= 18 20) #f)
(check-expect (even? 14) #t)
(check-expect (positive? -3) #f)
(check-expect (odd? 17) #t)
;; predicate
(check-expect (zero? 0) #t)
;; Predicate Examples
(define(adult? age)
  (>= age 18))
(check-expect (adult? 19) #t)
(check-expect (adult? 15) #f)

(define (passing-average? a b c)
  (>= (average3 a b c) 60))
(check-expect (passing-average? 40 50 50) #f)


;; passing-score? : Number -> Boolean
;; score 60 ба түүнээс дээш бол #t
(define (passing-score? a)
  (>= a 60))
(check-expect (passing-score? 60) #t)
(check-expect (passing-score? 59) #f)

;; fits-in-byte? : Number -> Boolean
;; сөрөг биш бүхэл n нэг byte (8 bit, 0–255)-д багтах уу
(define (fits-in-byte? a)
  (<= a 255))
(check-expect (fits-in-byte? 255) #t)
(check-expect (fits-in-byte? 256) #f)

;; large-file-mib? : Number -> Boolean
;; файлын хэмжээ (MiB) 100 ба түүнээс их бол #t
(define (large-file-mib? a)
  (<= 100 a))
(check-expect (large-file-mib? 100) #t)
(check-expect (large-file-mib? 99) #f)

;; same-total? : Number Number Number Number -> Boolean
;; хоёр барааны item-total тэнцүү эсэх (үнэ1 тоо1 үнэ2 тоо2)
(define (same-total? price1 count1 price2 count2)
  (= (item-total price1 count1)(item-total price2 count2)))
(check-expect (same-total? 5000 3 3000 5) #t)
(check-expect (same-total? 5000 3 5000 2) #f)

;; passing-average? : Number Number Number -> Boolean
;; average3 60 ба түүнээс дээш бол #t

(check-expect (passing-average? 60 60 60) #t)
(check-expect (passing-average? 59 60 60) #f)

;; discount-eligible? : Number Number Number -> Boolean
;; final-price 50000 ба түүнээс их бол #t (нэгж үнэ, тоо, хувь)
(define(discount-eligible? item_price item_count discount)
  (<= 50000 (final-price item_price item_count discount)))
(check-expect (discount-eligible? 5000 10 0) #t)    ; 50000
(check-expect (discount-eligible? 5000 10 10) #f)   ; 45000

