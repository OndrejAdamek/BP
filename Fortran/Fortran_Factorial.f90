RECURSIVE FUNCTION Factorial(n) RESULT(res)
    INTEGER, INTENT(IN) :: n
    INTEGER :: res

    IF (n < 2) THEN
      res = 1
    ELSE
      res = n * Factorial(n - 1)
    END IF
  END FUNCTION Factorial

END PROGRAM Fortran_Factorial