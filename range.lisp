(defun range (start step limit)
    (rangeaux start step limit (if (>= step 0) #'> #'< )))

(defun rangeaux (start step limit f)
    (if (funcall f start limit)
        nil 
        (cons start (rangeaux (+ start step) step limit f))))


(print (append (range 0 1 10) 
               (range 10 -1 0)))
