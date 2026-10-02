;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname project01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
 ; Функцийн нэр: rectangle-area
 ; Оролт: width, height
 ; Гаралт: area
 ; Томьёо: width × height
(define (rectangle-area width height)
  (* width height))

(rectangle-area 10 5)  ; Хүлээсэн үр дүн: 50
 ; Функцийн нэр: rectangle-perimeter
 ; Оролт: width, height
 ; Гаралт: perimeter
 ; Томьёо: (2 * ( width + length)
(define (rectangle-perimeter width length)
  (* 2(+ length width)))
(rectangle-perimeter 5 6); Хүлээсэн үр дүн: 22
 ; Функцийн нэр: square-area
 ; Оролт: a
 ; Гаралт: area
 ; Томьёо: width × height
(define (square-area a)
  (* a a))
(square-area 6); Хүлээсэн үр дүн: 36
 ; Функцийн нэр: minutes-to-seconds
 ; Оролт: minute
 ; Гаралт: seconds
 ; Томьёо: minute * 60 seconds
(define(minutes-to-seconds minute)
  (* minute 60))
(minutes-to-seconds 3.5); Хүлээсэн үр дүн: 210
 ; Функцийн нэр: hours-to-minutes
 ; Оролт: hours
 ; Гаралт: minutes
 ; Томьёо: hours * 60 minute
(define(hours-to-minutes hours)
  (* hours 60))
(hours-to-minutes 12); Хүлээсэн үр дүн: 720
 ; Функцийн нэр: celsius-to-fahrenheit
 ; Оролт: celsius
 ; Гаралт: fahrenheit
 ; Томьёо: (celsius * 1.8) + 32
(define(celsius-to-fahrenheit celsius)
  (+ 32 (* celsius 1.8)))
(celsius-to-fahrenheit 20); Хүлээсэн үр дүн: 68
 ; Функцийн нэр: kilometers-to-meters
 ; Оролт: kilometers
 ; Гаралт: meters
 ; Томьёо: (kilometers * 1000 meter)
(define(kilometers-to-meters kilometers)
  (* kilometers 1000))
(kilometers-to-meters 2); Хүлээсэн үр дүн: 2000
