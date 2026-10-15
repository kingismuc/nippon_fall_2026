(count-failing(list 70 82 95 63 88))
= (+ 1 (count-passing (list 70)))     ; 70 >= 60 → тоологдоно
= (+ 1 (count-passing (list 82)))     ; 82 >= 60 → тоологдоно
= (+ 1 (count-passing (list 95)))     ; 95 >= 60 → тоологдоно
= (+ 1 (count-passing (list 63)))     ; 63 >= 60 → тоологдоно
= (+ 1 (count-passing (list 88)))     ; 88 >= 60 → тоологдоно
= (+ 1 1 1 1 1)
= 5