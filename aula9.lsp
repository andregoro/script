;cond
(setq a 10)
(cond ((> a 20)
   (format t "~% a is greater than 20"))
   (t (format t "~% value of a is ~d " a))
)

;if
(setq a 10)
(if (> a 20)
   then (format t "~% a is less than 20"))
(format t "~% value of a is ~d " a)

;when
(setq a 100)
(when (> a 20)
   (format t "~% a is greater than 20"))
(format t "~% value of a is ~d " a)

;case
(setq day 4)
(case day
(1 (format t "~% Monday"))
(2 (format t "~% Tuesday"))
(3 (format t "~% Wednesday"))
(4 (format t "~% Thursday"))
(5 (format t "~% Friday"))
(6 (format t "~% Saturday"))
(7 (format t "~% Sunday")))