;;;; If we list all the natural numbers below 10 that are multiples of 3 and 5,
;;;; we get 3, 5, 6, and 9. The sum of these multiples is 23. Find the sum
;;;; of all the multiples of 3 or 5 below 1000.

(defun sumif (x sum)
   (if (< x 1000)
      (if (or (= 0 (mod x 3)) (= 0 (mod x 5)))
         (sumif (+ 1 x) (+ x sum))
         (sumif (+ 1 x) sum))
      sum))

(sumif 1 0)
