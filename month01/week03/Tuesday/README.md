;; 1. Base case байхгүй
(define (sum-1 l)
  (+ (first l) (sum-1 (rest l))))
(check-expect (sum-1 (cons 1 (cons 2 empty))) 3)
;; Base болох cond болон empty? l үед 0 байхаар нэмэж зассан
(cond [(empty? l) 0]
          [else])
;; 2. Base case-ийн утга буруу
(define (sum-2 l)
  (cond [(empty? l) 1]
        [else (+ (first l) (sum-2 (rest l)))]))
(check-expect (sum-2 (cons 1 (cons 2 empty))) 3)
;; Base нь 1 байх утга буруу болхоор 0 болгож өгсөн
 (cond [(empty? l) 0])

;; 3. count-items 1-ийн оронд first-ийг нэмж байна
(define (count-items-3 l)
  (cond [(empty? l) 0]
        [else (+ (first l) (count-items-3 (rest l)))]))
(check-expect (count-items-3 (cons 7 (cons 8 empty))) 2)

;; Хэдэн бараа байгааг олох function болхоор first l биш
[else (+ 1 (count-items-3 (rest l)))] буюу 1 1 ширхэгээр нэмэж явна

;; 4. Recursive call жижиг бодлого дээр очихгүй байна (Stop товч!)
(define (count-positive-4 l)
  (cond [(empty? l) 0]
        [(positive? (first l)) (+ 1 (count-positive-4 (rest l)))]
        [else (count-positive-4 l)]))
(check-expect (count-positive-4 (cons 5 (cons -1 empty))) 1)

;;positive үед 1 ийг нэмэх болхоор заасал if ашиглана
[ else
          (if (positive? (first l)) (+ 1 (count-positive-4 (rest l))) (count-positive-4 (rest l)))]