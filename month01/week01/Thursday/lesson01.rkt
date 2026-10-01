;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Thursday (2026-10-01) -- comment (сэтгэгдэл)
; values -- утга
5
-6
1.6
"Hello World"
true

; arithmetic operation -> expression -> result

(+ 3 4)
(- 10 6)
(* 5 8)
(/ 20 4)
(+ 100 50)
(- 30 12)
(* 7 6)
(/ 81 9)

(+ 1 2 3)
(+ 10 20 30)
(* 2 3 4)
(- 20 5 3)
(/ 100 2 5)
; nested expression
(+ (* 2 3) 4)

; (* 2 3 -> syntax error

; (* 4)
; (sign operator operand)

; define тодорхойлох - keyword




; examples : өөрийнхөө нэр болоод мэргэжлийг тодорхойлоод утга оноогоод хэвлэж харуулна уу
(define name "нэр Bayarmagnai Shoovdor")
(define job "ажил unemployed")
(define age  "нас 25")
name job age

; width, heigh гэдгийг тодорхойлоод 4 5 утгууд онооно уу
; тухайн нэрнүүдийг ашиглан тоонуудын нийлбэрийг олно уу.
; expected output 9 байх ёстой
; Дараа нь үржүүлээд үр дүнг нь 20 болгож харуулна уу
;Ex01
(define width 4)
(define heigh 5)
(+ width heigh)
(* width heigh)


; price,quantity нэрэнд 100, 3 утгуудыг оноогоод түүний нийт үнийг нь олж хэвлэж харуулна уу
;Ex02
(define price 100)
(define quantity 3)
(* price quantity)
; salary, bonus нэрнүүдэд 1500,300 утгуулдыг оноогоод сарын эцэст хэдий их цалин авахаа тооцоолно уу
;Ex03
(define salary 1500)
(define bonus 300)
(+ salary bonus)

;
(* heigh heigh)
(* width width)
; 4 * 4 = 16/

; Functions
;; square гэдэг функц тодорхойлох
;; x -ийг функцын параметр
;; INPUT - x
;; FUNCTION PROCESS -> (* x x)

(define (square x)
  (* x x))


;; output???
(square 5)
(square 12)


;; double гэдэг нэртэй 1 параметр аваад түүнийг утгыг double-даг функц бичнэ үү
;; түүнийгээ 4, 8, -35 гэдэг аргументуудаар тестлэж үр дүнг нь шалгаарай.

;; Expected output : 4 -> 8
(define (double x)
  (* x 2))
(double 4)
(double -35)

;; Ex 05
;; triple гэдэг нэртэй 1 параметр аваад түүний утгыг 3 дахин өсгөдөг функц бичнэ үү
;; түүнийгээ өөрийн дурын 2 аргументаар тестэлж үр дүнг нь шалгаарай

(define (triple x)
  (* x 3))
(triple 5)
(triple 20)

;; Ex 06
;; add-ten гэдэг нэртэй 1 параметр аваад түүний утгыг 10 аар нэмэгдүүлдэг функц бичнэ үү
;; түүнийгээ өөрийн дурын 2 аргументаар тестэлж үр дүнг нь шалгаарай.
(define (add-ten x)
  (+ x 10))
(add-ten 12)
(add-ten -5)

;; Multiple parameters
;; two parametered function
;; тэгш өнцөгтийн талбайг олох - width * height
(define (calculate-area-rectangle width height)
  (* width height))

(calculate-area-rectangle 5 6)

;; Ex07
;; calculate-perimiter-rectangle функц бичнэ үү
;; P = 2 * (a + b)
(define (calculate-perimiter-rectangle width heigh)
  (* 2(+ width heigh)))
(calculate-perimiter-rectangle 5 6)

;;Ex08
;; calculate-circle-area функц бичнэ үү
;; A = 3.14 * radius * radius
(define (calculate-circle-area radius)
  (* 3.14 (* radius radius)))
(calculate-circle-area 5)
