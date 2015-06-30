(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This procedure uses an if statement to determine if b is to be added or subtracted to a, depending on whether or not b is negative. It returns a + the absolute value of b.
