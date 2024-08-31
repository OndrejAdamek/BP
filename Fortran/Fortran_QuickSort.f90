INTEGER FUNCTION PARTITION(A, p, r)
  REAL, INTENT(INOUT) :: A(:)
  INTEGER, INTENT(IN) :: p, r
  INTEGER :: i, j
  REAL :: x, temp

  x = A(r)              
  i = p - 1             

  DO j = p, r - 1
    IF (A(j) < x) THEN
      i = i + 1

      temp = A(i)
      A(i) = A(j)
      A(j) = temp
    END IF
  END DO

  temp = A(i + 1)
  A(i + 1) = A(r)
  A(r) = temp

  PARTITION = i + 1     
END FUNCTION PARTITION

RECURSIVE SUBROUTINE QUICKSORT(A, p, r)
  REAL, INTENT(INOUT) :: A(:)
  INTEGER, INTENT(IN) :: p, r
  INTEGER :: q

  IF (p < r) THEN
    q = PARTITION(A, p, r)
    CALL QUICKSORT(A, p, q - 1)  
    CALL QUICKSORT(A, q + 1, r)  
  END IF
END SUBROUTINE QUICKSORT