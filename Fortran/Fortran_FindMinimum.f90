INTEGER FUNCTION FindMinimum(A)
    INTEGER, INTENT(IN) :: A(:)  
    INTEGER :: i
    INTEGER :: min

    min = A(1)  

    DO i = 2, SIZE(A)
      IF (A(i) < min) THEN
        min = A(i)
      END IF
    END DO

    FindMinimum = min  
END FUNCTION FindMinimum