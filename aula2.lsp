(setf *print-case* :capitalize)
 
 (format t "number with commas ~:d" 1000000)

 (format t "PI to 5 characters ~5f" 3.141576)

 (format t "PI to 4 characters ~4f" 3.141576)

 (format t "10 Percent ~,.2f" .10)

 (format t "10 Dollars ~$ ~%" 10)