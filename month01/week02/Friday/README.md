reading.rkt дотороос Пүрэв гаригт миний бичсэн кодноос ялгаатай юм бараг байсангүй ганц өөр байсан юм нь
(define (sum3 a b c) (+ a b c)) ингэж өгөхгүйгээр шууд
(define (average3 a b c) (/ (+ a b c) 3)) гэж товчилж болно

debug.rkt алдаа олох дасгал
1. (* (/ completed total) 100)) д хувааж өгнө
2. (define (passing-average-2? s1 s2 s3)
  (>= (/ (sum3 s1 s2 s3) 3) 60)) болгож өөрчлөнө
3. (assignments-complete? completed total) нэмж өгнө
4. #t үед not eligible гархаар байсанг заавал байрын сольно
5. eligible? s1 s2 s3 attendance completed total дээр total arguments ийг заавал нэмж өгнө
6. good-attendance? ийг түрүүлж бичвэл passing-average? нь бодогдохгүйгээр шууд Low attendance гарах болхоор check-expect дээр бичсэн хариутай зөрнө