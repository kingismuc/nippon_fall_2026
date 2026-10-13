;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |tuesday practice|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; third-item : List-of-numbers -> Number
;; дор хаяж 3 элементтэй list-ийн гурав дахь утга
;; (Beginning Student-д third гэдэг нэр аль хэдийн байдаг тул third-item)
(define (third-item xs)
  (first (rest (rest xs))))
(check-expect (third-item (cons 4 (cons 7 (cons 9 empty)))) 9)

;; two-items? : List-of-numbers -> Boolean
;; яг хоёр элементтэй бол #t
(define (two-items? xs)
  (and (cons? xs)(cons? (rest xs))(empty? (rest (rest xs)))))
(check-expect (two-items? empty) #f)
(check-expect (two-items? (cons 1 empty)) #f)
(check-expect (two-items? (cons 1 (cons 2 empty))) #t)
(check-expect (two-items? (cons 1 (cons 2 (cons 3 empty)))) #f)


;; first-or-dot : List-of-images -> Image
;; хоосон бол саарал цэг (circle 5 "solid" "gray"), үгүй бол эхний зураг
(require 2htdp/image)

;; List-of-images is one of:
;; – empty
;; – (cons Image List-of-images)

(define shapes
  (cons (circle 20 "solid" "red")
        (cons (rectangle 40 40 "solid" "blue")
              empty)))

;(define (first-or-dot xs)
;  (if (empty?)
;      "
;(check-expect (first-or-dot empty) (circle 5 "solid" "gray"))
;(check-expect (first-or-dot (cons (circle 20 "solid" "red") empty)) (circle 20 "solid" "red"))
(define (exactly-two? list)
 (and (cons? list)(cons? (rest list))(empty? (rest(rest list)))))
(check-expect (exactly-two? empty) #false)
(check-expect (exactly-two? (cons 5 empty)) #false)
(check-expect (exactly-two? (cons 5 (cons 10 empty))) #true)
(check-expect (exactly-two? (cons 5 (cons 10 (cons 15 empty)))) #false)

;;Ex05
;;first-three-total : List-of-numbers -> Number
;; List-ийн эхний гурван элементийн нийлбэрийг буцаана.
;; List дор хаяж гурван элементтэй байна.
(define prices
  (cons 2500
        (cons 4000
              (cons 1500 empty))))
(define (first-three-total numbers)
  (if (cons? (rest (rest numbers)))
      (+ (first numbers)(first (rest numbers))(first (rest (rest numbers))))
      #false ))
(check-expect (first-three-total prices) 8000)

(check-expect (first-three-total (cons 100 (cons 200 (cons 300 empty)))) 600)
  
;; 100 elements prices?
;; resursive function өөрийгөө дууддаг комманд
;; fun-for-lon : List-of-numbers -> ???
(define (fun-for-lon l)
  (cond
    [(empty? l) ...]
    [else (... (first l)
               ... (fun-for-lon (rest l)) ...)]))
;; sum : List-of-numbers -> Number
(define (sum l)
  (cond
    [(empty? l) 0]
    [else (+ (first l)
             (sum  (rest l)))]))

;; бүх тооны нийлбэр
(check-expect (sum empty) 0)
(check-expect (sum (cons 1 (cons 2 (cons 3 empty)))) 6)

;; multiply: List-of-numbers -> Number
(define (multiply x)
  (cond
    [(empty? x) 1]
    [else (* (first x)
             (multiply (rest x)))]))

(check-expect (multiply empty) 1)
(check-expect (multiply (cons 1 (cons 2 (cons 3 empty)))) 6)
(check-expect (multiply (cons 1 (cons 2 (cons 3 (cons 4 empty))))) 24)

;; Ex01
;; count-word : List-of-strings -> Number
(define (count-words words)
  (cond
    [(empty? words) 0]
    [else (+ 1 (count-words (rest words)))]))
(check-expect (count-words empty) 0)
(check-expect (count-words (cons "hello" empty)) 1)
(check-expect (count-words (cons "hello" (cons "world" empty))) 2)
(check-expect (count-words (cons "I" (cons "love" (cons "Racket" empty)))) 3)

;; Ex02
;; contains-word? : String List-of-strings -> Boolean
;; хайж буй үг жагсаалтанд байгаа эсэхийг шалгана
(define (contains-word? word words)
   (cond
    [(empty? words) #f]
    [(string=? word (first words)) #true] 
    [else 
     (contains-word? word (rest words))]))
(check-expect (contains-word? "cat" empty) #false)
(check-expect
 (contains-word? "cat" (cons "cat" empty))
 #true)
(check-expect
 (contains-word? "dog" (cons "cat" (cons "dog" empty)))
 #true)
(check-expect
 (contains-word? "bird" (cons "cat" (cons "dog" empty)))
 #false)

(check-expect (contains-word? "cat" empty) #false)
(check-expect
 (contains-word? "cat" (cons "cat" empty))
 #true)
(check-expect
 (contains-word? "dog" (cons "cat" (cons "dog" empty)))
 #true)
(check-expect
 (contains-word? "bird" (cons "cat" (cons "dog" empty)))
 #false)

;; Ex03
;; count-long-words : List-of-strings -> Number
;; 5 буюу түүнээс олон тэмдэгттэй үгсийн тоог олно

(define (count-long-words words)
   (cond
    [(empty? words) 0]
    [(<= 5 (string-length (first words)))
     (+ 1 (count-long-words (rest words)))] 
    [else

     (count-long-words (rest words))]))
(check-expect (count-long-words empty) 0)
(check-expect (count-long-words (cons "cat" empty)) 0)
(check-expect (count-long-words (cons "apple" empty)) 1)
(check-expect(count-long-words(cons "apple" (cons "hi" (cons "banana" empty))))2)
(check-expect(count-long-words(cons "hello" (cons "world" (cons "Racket" empty))))3)

;; Ex04
;; count-completed : List-of-Boolean -> Number
(define (count-completed booleans)
 (cond
  [(empty? booleans) 0]
  [(first booleans)
   (+ 1 (count-completed (rest booleans)))]
  [else
    (count-completed (rest booleans))]))
;; дууссан даалгавдрын тоого олно

(check-expect (count-completed empty) 0)
(check-expect (count-completed (cons #true empty)) 1)
(check-expect (count-completed (cons #false empty)) 0)
(check-expect
 (count-completed (cons #true (cons #false empty)))
 1)
(check-expect
 (count-completed
  (cons #true (cons #true (cons #false (cons #true empty)))))
 3)
(check-expect
 (count-completed
  (cons #false (cons #false (cons #false empty))))
 0)

;; Ex05
;; join-words : List-of-strings -> String
;; бүх үгийг зайгаар тусгаарлан холбоно
(define (join-words words)
  (cond
    [(empty? words) "" ]
    [(empty? (rest words)) (first words)]
    [else
     (string-append (first words)
                    " "
     (join-words (rest words)))]))

(check-expect (string-append "Hello" "World") "HelloWorld")

(check-expect (join-words empty) "")
(check-expect (join-words (cons "Hello" empty)) "Hello")
(check-expect
 (join-words (cons "Hello" (cons "world" empty)))
 "Hello world")
(check-expect
 (join-words (cons "I" (cons "love" (cons "Racket" empty))))
 "I love Racket")
  
;; count-items : List-of-numbers -> Number
;; элементийн тоо
(define (count-items number)
  (cond
    [(empty? number) 0]
    [else (+ 1 (count-items (rest number)))]))
(check-expect (count-items empty) 0)
(check-expect (count-items (cons 7 (cons 8 (cons 9 empty)))) 3)

;; product : List-of-numbers -> Number
;; бүх тооны үржвэр. Хоосон list-ийн үржвэр 1 (0 биш!) — яагаад?
(define (product numb)
  (cond
    [(empty? numb) 1]
    [else ( * (first numb)(product (rest numb)))]))
(check-expect (product empty) 1)
(check-expect (product (cons 2 (cons 3 (cons 4 empty)))) 24)

;; contains-zero? : List-of-numbers -> Boolean
;; list дотор 0 байвал #t. or ашигла.
(define (contains-zero? numb)
  (cond
    [(empty? numb) #f]
    [else
     (or (= (first numb) 0) (contains-zero? (rest numb)))]))
(check-expect (contains-zero? empty) #f)
(check-expect (contains-zero? (cons 1 (cons 0 empty))) #t)
(check-expect (contains-zero? (cons 1 (cons 2 empty))) #f)

;; count-positive : List-of-numbers -> Number
;; эерэг тоонуудын тоо (0 эерэг биш)
;; count-positive : List-of-numbers -> Number
;; эерэг тоонуудын тоо (0 эерэг биш)
(check-expect (count-positive empty) 0)
(check-expect (count-positive (cons -2 (cons 0 (cons 5 (cons 9 empty))))) 2)

(define (count-positive l)
  (cond
    [(empty? l) 0]
    [else
     (if (positive? (first l))
         (+ 1 (count-positive (rest l)))
         (count-positive (rest l)))]))

(check-expect (count-positive empty) 0)
(check-expect (count-positive (cons -2 (cons 0 (cons 5 (cons 9 empty))))) 2)

;; count-even : List-of-numbers -> Number
;; тэгш тоонуудын тоо
(define (count-even numb)
  (cond
    [(empty? numb) 0]
    [else
     (if (even? (first numb))
         (+ 1 (count-even (rest numb)))
     (count-even (rest numb)))]))
(check-expect (count-even empty) 0)
(check-expect (count-even (cons 2 (cons 3 (cons 4 (cons 5 (cons 6 empty)))))) 3)
(check-expect (count-even (cons 1 (cons 3 empty))) 0)

;; count-negative : List-of-numbers -> Number
;; сөрөг тоонуудын тоо (0 сөрөг биш)
(define (count-negative numb)
  (cond
    [(empty? numb) 0]
    [else
     (if (negative? (first numb))
         (+ 1 (count-negative (rest numb)))
         (count-negative (rest numb)))]))
(check-expect (count-negative (cons -1 (cons 0 (cons -3 empty)))) 2)
;; draw-all : List-of-images -> Image
;; бүх зургийг зүүнээс баруун тийш тавина
(define (draw-all img)
  (cond
    [(empty? img) empty-image]
    [else
     (beside (first img)
     (draw-all (rest img)))]))
(check-expect (draw-all empty) empty-image)
(check-expect (draw-all (cons (circle 20 "solid" "red")
                              (cons (rectangle 40 40 "solid" "blue") empty)))
              (beside (circle 20 "solid" "red") (rectangle 40 40 "solid" "blue")))

;; 1. Base case байхгүй
(define (sum-1 l)
    (cond [(empty? l) 0]
          [else 
  (+ (first l) (sum-1 (rest l)))]))
(check-expect (sum-1 (cons 1 (cons 2 empty))) 3)

;; 2. Base case-ийн утга буруу
(define (sum-2 l)
  (cond [(empty? l) 0]
        [else (+ (first l) (sum-2 (rest l)))]))
(check-expect (sum-2 (cons 1 (cons 2 empty))) 3)

;; 3. count-items 1-ийн оронд first-ийг нэмж байна
(define (count-items-3 l)
  (cond [(empty? l) 0]
        [else (+ 1 (count-items-3 (rest l)))]))
(check-expect (count-items-3 (cons 7 (cons 8 empty))) 2)

;; 4. Recursive call жижиг бодлого дээр очихгүй байна (Stop товч!)
(define (count-positive-4 l)
  (cond [(empty? l) 0]
        [ else
          (if (positive? (first l)) (+ 1 (count-positive-4 (rest l))) (count-positive-4 (rest l)))]))
(check-expect (count-positive-4 (cons 5 (cons -1 empty))) 1)