;;clisp
(print "print")
( defvar *nome*(read))
(defun hello-you (*nome*)
    (format t "Hello ~a! ~%" *nome*)
)
;;; ~a :Show the value
;;; 
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq *print-case* :capitalize)

(hello-you *nome*)