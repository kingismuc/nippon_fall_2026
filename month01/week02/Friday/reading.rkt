;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname reading) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ---- Пүрэвийн төсөл: жишээ шийдэл ----
;;Унших Дасгал

(define (sum3 a b c) (+ a b c))
(define (average3 a b c) (/ (sum3 a b c) 3))
(define (assignment-percent completed total)
  (* (/ completed total) 100))

(define (passing-average? s1 s2 s3)
  (>= (average3 s1 s2 s3) 60))
(define (good-attendance? attendance)
  (>= attendance 80))
(define (assignments-complete? completed total)
  (>= (assignment-percent completed total) 70))

(define (eligible? s1 s2 s3 attendance completed total)
  (and (passing-average? s1 s2 s3)
       (good-attendance? attendance)
       (assignments-complete? completed total)))

(define (final-status s1 s2 s3 attendance completed total)
  (if (eligible? s1 s2 s3 attendance completed total)
      "Eligible"
      "Not eligible"))

(define (letter-grade avg)
  (cond
    [(>= avg 90) "A"]
    [(>= avg 80) "B"]
    [(>= avg 70) "C"]
    [(>= avg 60) "D"]
    [else "F"]))

(define (student-grade s1 s2 s3)
  (letter-grade (average3 s1 s2 s3)))

(define (ineligibility-reason s1 s2 s3 attendance completed total)
  (cond
    [(not (passing-average? s1 s2 s3)) "Low score"]
    [(not (good-attendance? attendance)) "Low attendance"]
    [(not (assignments-complete? completed total)) "Missing assignments"]
    [else "Eligible"]))

;; 3 дүнг нэмээд 3т хувааж дунджыг олно
(average3 80 90 70) ;; 3т хуваасан дүн 80

;; Дуусгасан төслийг нийт төсөлд хувааж 100% аар үржүүлнэ
(assignment-percent 7 10) ;; Хуваагаад 100% т үржүүлсэн дүн 70%

;; Өмнөх function наа дуудаж нэмээд 3т хуваасан дүн 60
(passing-average? 100 80 0) ;; score >= 60 нь #true

;; Бүх дүн болон ирц төслийн дүн хүрж байгааг шалгана
(eligible? 80 90 70 79 8 10) ;; score >= 60 (80 оноо тэнцсэн)
                             ;; attendance >= 80 (ирц хүрээгүй)
                             ;; ирц хүрээгүй учир төслийг бодохгүй
(final-status 59 59 59 100 10 10)
                             ;; score >= 60 хүрээгүй учир бусад function бодогдохгүй "Not eligible"
(letter-grade 69)
                             ;; score >= 90 "A" , score >= 80 "B" , score >= 70 "C" , score >= 60 "D"
                             ;; score >= 60 үёд л function ажиллах болхоор хариу "D"
(student-grade 100 90 80)
                             ;; score >= 90 "A" , score >= 80 "B" , score >= 70 "C" , score >= 60 "D"
                             ;; average3 ийг ашиглах үёд дүн 270 буюу 3т хувааснаар 90 "A" гарна
(ineligibility-reason 80 90 70 79 0 10)
                             ;; score >= 60 (70 оноо тэнцсэн)
                             ;; attendance >= 80 (70% ирц тэнцэхгүй)
                             ;; Ирц тэнцээгүй учир төслийг бодохгүйы