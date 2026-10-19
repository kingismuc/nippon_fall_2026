;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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