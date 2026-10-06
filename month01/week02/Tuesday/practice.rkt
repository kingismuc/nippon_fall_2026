;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname practice) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; kb-to-bytes : Number -> Number
;;(define (kb-to-bytes kb)
  ;;(* kb 1000))
;;(check-expect (kb-to-bytes 2) 2000)

;; kb-to-bits : Number -> Number
;; kb-to-bytes, Даваагийн bytes-to-bits-г дуудна
;;(define (kb-to-bits kb)
 ;; (* (kb-to-bytes kb) 8))
;;(check-expect (kb-to-bits 2) 16000)   ; (kib-to-bits 2) бол 16384

;; can-store? : Number Number -> Boolean
;; файлын хэмжээ, дискний сул зай (KiB) -> багтвал #t
;;(define(can-store? KiB Size)
 ;; (<= KiB Size))
;;(check-expect (can-store? 500 512) #t)
;;(check-expect (can-store? 512 512) #t)
;;(check-expect (can-store? 513 512) #f)

;; cheap-order? : Number Number -> Boolean
;; нэгж үнэ, тоо ширхэг → item-total 10000-аас бага бол #t
;;(define(cheap-order? price count)
  ;;(< (* price count) 10000))
;;(check-expect (cheap-order? 2000 4) #t)   ; 8000
;;(check-expect (cheap-order? 2000 5) #f)   ; 10000, хил


;; Boolean operation

;; and, or , not

(and (> 10 5) (< 3 1)) ;; #f
(or (= 4 4) (> 2 9)) ;; #t
(not (even? 7)) ;;#t
(and (>= 75 60) (>= 90 80)) ;; #t

;;Exercises
(check-expect (and #t #t) #t)
(check-expect (and #t #f) #f)
(check-expect (or #f #f) #f)
(check-expect (or #f #t) #t)
(check-expect (not #t) #f)
(check-expect (not #f) #t)
(check-expect (and (> 8 3)(even? 10)) #t)
(check-expect (or (< 1 0) (= 6( + 3 3))) #t)
(check-expect (not (positive? -2)) #t)
(check-expect (and (>= 60 60 )(>= 79 80)) #f)

;; EX01
;; ;; in-rage? : Number-> Boolean
;; n нь 1-ээс 10 хүртэл хоёр талдаа орно бол #t
(define (in-range? a)
  (and (<= a 10) (<= 1 a)))

(check-expect (in-range? 5) #t)
(check-expect (in-range? 1) #t)
(check-expect (in-range? 10) #t)
(check-expect (in-range? 0) #f)
(check-expect (in-range? 11) #f)


;;EX03
;;teen? : Number -> Boolean

;; age 13-аас 19 хүртэл (хоёр талдаа орно) бол #t

(define(teen? a)
  (and (<= a 19) (<= 13 a)))

(check-expect (teen? 13) #t)
(check-expect (teen? 19) #t)
(check-expect (teen? 12) #f)
(check-expect (teen? 20) #f)

(define(weekend? day)
  (or (= day 6)(= day 7)))
(check-expect (weekend? 6) #t)
(check-expect (weekend? 7) #t)
(check-expect (weekend? 5) #f)

(define(scholarship? score attend)
  (and (>= score 90) (>= attend 80)))
(check-expect (scholarship? 90 80) #t)
(check-expect (scholarship? 89 100) #f)
(check-expect (scholarship? 100 79) #f)

(define(not-passing? score)
  (not (>= score 60)))
(check-expect (not-passing? 59) #t)
(check-expect (not-passing? 60) #f)


;; IF ELSE
;; adult-or-minor : Number -> String
;; age 18 ба түүнээс дээш бол "adult", үгүй бол "minor"
(define (adult-or-minor age)
  (if (>= age 18)
      "adult"
      "minor"))
(check-expect (adult-or-minor 30) "adult")
(check-expect (adult-or-minor 18) "adult")   ; хил
(check-expect (adult-or-minor 17) "minor")   ; хилийн доор

;;Exercieses IF
;;EX01
;; even-or-odd : Number -> String
;; тэгш бол "even", сондгой бол "odd"
(define(even-or-odd number)
  (if (even? number)
      "even"
      "odd"))
(check-expect (even-or-odd 4) "even")
(check-expect (even-or-odd 7) "odd")
(check-expect (even-or-odd 0) "even")

;; pass-or-fail : Number -> String
;; score 60 ба түүнээс дээш бол "pass", үгүй бол "fail"
(define(pass-or-fail score)
  (if (>= score 60)
      "pass"
      "fail"))
(check-expect (pass-or-fail 60) "pass")
(check-expect (pass-or-fail 59) "fail")
;; shipping-fee : Number -> Number
;; захиалгын дүн 50000 ба түүнээс их бол хүргэлт 0, үгүй бол 3000
(define (shipping-fee price)
  (if (>= price 50000)
      0
      3000))
(check-expect (shipping-fee 50000) 0)
(check-expect (shipping-fee 49999) 3000)
;; free-shipping? : Number -> Boolean
;; дүн 50000 ба түүнээс их бол #t. if ашиглахгүйгээр бич.
(define (free-shipping? price)
  (>= price 50000))
      

(check-expect (free-shipping? 50000) #t)
(check-expect (free-shipping? 49999) #f)
;; larger : Number Number -> Number
;; хоёр тооны их нь
(define (larger num1 num2)
  (if (> num1 num2)
      num1
      num2))
(check-expect (larger 3 8) 8)
(check-expect (larger 8 3) 8)
(check-expect (larger 5 5) 5)
;; absolute-value : Number -> Number
;; сөрөг бол эсрэг тэмдэгтэй болгоно, үгүй бол хэвээр
(define (absolute-value value)
(if (>= value 0)
       value
     (* value -1)))
(check-expect (absolute-value -4) 4)
(check-expect (absolute-value 4) 4)
(check-expect (absolute-value 0) 0)
;; scholarship-label : Number Number -> String
;; score, attendance → тэтгэлэгт тэнцвэл "scholarship", үгүй бол "regular"
(define (scholarship-label score attendance)
  (if (scholarship? score attendance)
      "scholarship"
      "regular"))
(check-expect (scholarship-label 95 85) "scholarship")
(check-expect (scholarship-label 90 80) "scholarship")
(check-expect (scholarship-label 89 80) "regular")
(check-expect (scholarship-label 90 79) "regular")
;; COND
;; grade : Number -> String
;; 0–100 оноог үсгэн дүн болгоно
(define (grade score)
  (cond
    [(>= score 90) "A"]
    [(>= score 80) "B"]
    [(>= score 70) "C"]
    [(>= score 60) "D"]
    [else "F"]))

(check-expect (grade 90) "A")   ; хил
(check-expect (grade 89) "B")   ; хилийн доор
;; temperature-label : Number -> String
;; 0-ээс бага "freezing", 0–14 "cold", 15–24 "warm", 25 ба түүнээс дээш "hot"
(define (temperature-label temp)
  (cond
    [(>= temp 25) "hot"]
    [(>= temp 15) "warm"]
    [(>= temp 0) "cold"]
    [else "freezing"]))

(check-expect (temperature-label -1) "freezing")
(check-expect (temperature-label 0) "cold")
(check-expect (temperature-label 14) "cold")
(check-expect (temperature-label 15) "warm")
(check-expect (temperature-label 24) "warm")
(check-expect (temperature-label 25) "hot")
;; ticket-price : Number -> Number
;; age 13-аас бага 5000, 13–59 10000, 60 ба түүнээс дээш 6000
(define (ticket-price age)
  (cond
    [(>= age 60) 6000]
    [(>= age 13) 10000]
    [else 5000]))
(check-expect (ticket-price 12) 5000)
(check-expect (ticket-price 13) 10000)
(check-expect (ticket-price 59) 10000)
(check-expect (ticket-price 60) 6000)
;; number-sign : Number -> String
;; "positive", "zero", "negative"
(define (number-sign num)
  (cond
    [(= num 0) "zero"]
    [(> num 0) "positive"]
    [(< num 0) "negative"]))

(check-expect (number-sign 5) "positive")
(check-expect (number-sign 0) "zero")
(check-expect (number-sign -5) "negative")
;; file-size-label : Number -> String
;; MiB хэмжээ: 10-аас бага "small", 10–99 "medium", 100 ба түүнээс их "large"
(define (file-size-label size)
  (cond
    [(>= size 100) "large"]
    [(>= size 10) "medium"]
    [else "small"]))
(check-expect (file-size-label 9) "small")
(check-expect (file-size-label 10) "medium")
(check-expect (file-size-label 99) "medium")
(check-expect (file-size-label 100) "large")
;; club-status : Number Number -> String
;; score, attendance:
;;   scholarship? үнэн бол                    "scholarship"
;;   score >= 60 ба attendance >= 70 бол       "member"
;;   бусад                                    "waitlist"
(define (club-status score attend)
  (cond
    [(scholarship? score attend) "scholarship"]
    [(and (>= score 60)(>= attend 70)) "member"]
    [else "waitlist"]))
(check-expect (club-status 95 90) "scholarship")
(check-expect (club-status 90 79) "member")     ; scholarship-д attendance хүрэхгүй
(check-expect (club-status 60 70) "member")     ; хоёр хил
(check-expect (club-status 59 100) "waitlist")
(check-expect (club-status 100 69) "waitlist")