;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname project02) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
 ; Функцийн нэр: item_total
 ; Оролт: item_price , item_stock
 ; Гаралт: item_total
 ; Томьёо: item_price * item_stock
(define (item_total item_price item_stock)
  (* item_price item_stock))
(item_total 400 5)  ; Хүлээсэн үр дүн: 2000
; Функцийн нэр: discount-amount
 ; Оролт: item_price , discount_%
 ; Гаралт: discount-amount
 ; Томьёо: (item_price / 100) * discount_%
(define (discount-amount item_price discount_%)
  (* discount_% (/ item_price 100)))

(discount-amount 1000 10)  ; Хүлээсэн үр дүн: 100
; Функцийн нэр: final-price
 ; Оролт: item_price , discount-amount
 ; Гаралт: final-price
 ; Томьёо: item_price - discount-amount
(define (final-price item_price discount_%)
  (- item_price (discount-amount item_price discount_%)))

(final-price 1000 10); Хүлээсэн үр дүн: 900
; Функцийн нэр: tax-amount
 ; Оролт: item_price , tax_%
 ; Гаралт: tax_amount
 ; Томьёо: item_price * (tax_%/100)
(define (tax-amount item_price tax_%)
  (* item_price (/ tax_% 100)))

(tax-amount 3000 5); Хүлээсэн үр дүн: 150
; Функцийн нэр: price-per-item
 ; Оролт: item_total , item_stock
 ; Гаралт: price-per-item
 ; Томьёо: item_total / item_stock
(define (price-per-item item_total item_stock)
  (/ item_total item_stock))

(price-per-item 6000 5); Хүлээсэн үр дүн: 1200
; Функцийн нэр: total-for-two-products
 ; Оролт: item_total
 ; Гаралт: total-for-two-products
 ; Томьёо: item_total + item_total2
(define (total-for-two-products item_price item_stock item_price2 item_stock2)
  (+ (item_total item_price item_stock)(item_total item_price2 item_stock2)))

(total-for-two-products 1000 3 5000 4); Хүлээсэн үр дүн: 23000