(setq a 10)
(setq b 20)

(format t "~% A and B is ~a" (and a b))
(format t "~% A or B is ~a" (or a b))
(format t "~% not A is ~a" (not a))