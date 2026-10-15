;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname debug) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 1.
(define (double-all-1 l)
  (cond [(empty? l) empty]
        [else (cons (* 2 (first l)) (double-all-1 (rest l)))]))
;; empty дээр тоо 0 биш empty г хийж өгөхгүй бол үр дүн сүүлийн тоо болон empty гийн 0 гарж байгаа болхоор хариутай таарахгүй
(check-expect (double-all-1 (list 1 2)) (list 2 4))

;; 2.
(define (add-ten-all-2 l)
  (cond [(empty? l) empty]
        [else (cons (+ 10 (first l)) (add-ten-all-2 (rest l)))]))
(check-expect (add-ten-all-2 (list 1 2)) (list 11 12))
;; list болгоогүй бас нэмэх тэмдэг давхар байсан

;; 3.
(define (only-positive-3 l)
  (cond [(empty? l) empty]
        [else (if (positive? (first l))
                  (cons (first l) (only-positive-3 (rest l)))
                  (only-positive-3 (rest l)))]))
(check-expect (only-positive-3 (list -1 5)) (list 5))
;; if дээр false үед яах нь мэдэгдэхгүй зөвхөн empty гэж байсан false үед rest лүү буцах ёстой


;; 4.
(define (only-positive-4 l)
  (cond [(empty? l) empty]
        [else (if (positive? (first l))
                  (cons (first l) (only-positive-4 (rest l)))
                  (only-positive-4 (rest l)))]))
(check-expect (only-positive-4 (list -1 5)) (list 5))

;;cons ийг давхар бичих шаардлаггүй resursive болхоор өмнөн бичигдсэн function уудыг ашиглах учраас error гарна


;; 5.
(define (cap-at-100-5 l)
  (cond [(empty? l) empty]
        [else (cons (min (first l) 100) (cap-at-100-5 (rest l)))]))
(check-expect (cap-at-100-5 (list 50 150)) (list 50 100))

;;max биш min ийг ашиглана
