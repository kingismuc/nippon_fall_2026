;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname debug) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 1
(define-struct student (name quiz project))

(define aki  (make-student "Aki"  80 90))
(define sora (make-student "Sora" 60 60))
(define mina (make-student "Mina" 95 91))
(define ren  (make-student "Ren"  45 55))

(define (final-score s)
  (+ (* 0.6 (student-project s))
     (* 0.4 (student-quiz s))))
(check-expect (final-score aki) 86)

;; 2
(define (passing? s)
  (>= (final-score s) 60))
(check-expect (passing? sora) #true)

;; 3
(define (add-bonus s b)
  (make-student (student-name s)
                (student-quiz s)
                (min 100 (+ (student-project s) b))
                ))
(check-expect (add-bonus aki 5) (make-student "Aki" 80 95))

;; 4
(define (letter-grade n)
  (cond [(>= n 90) "A"]
        [(>= n 80) "B"]
        [(>= n 70) "C"]
        [(>= n 60) "D"]
        [else "F"]))
(define (student-grade s)
  (letter-grade (final-score s)))
(check-expect (student-grade aki) "B")
(define (count-students l)
  (cond [(empty? l) 1]
        [else (+ 1 (count-students (rest l)))]))
(define (average-final l)
  (/ (+ (final-score students))(count-students students)))
(define students (list aki sora mina ren))
(define (count-grade l g) (cond [(empty? l) 0] [else (if (string=? (student-grade (first l)) g) (+ 1 (count-grade (rest l) g)) (count-grade (rest l) g))]))
(check-expect (count-grade empty "A") 0)
(check-expect (count-grade students "A") 1)
(check-expect (count-grade students "F") 1)
(check-expect (count-grade students "C") 0)
(check-expect (average-final students) 72.4)