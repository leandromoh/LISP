(defun range (a step limit)
    (rangeaux a step limit (if (>= step 0) #'> #'< )))

(defun rangeaux (a step limit f)
    (if (funcall f a limit)
        nil 
        (cons a (rangeaux (+ a step) step limit f))))


(print (append (range 0 1 10) 
               (range 10 -1 0)))
