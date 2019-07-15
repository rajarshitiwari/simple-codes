PROGRAM DIGIT_DISTRIBUTION
  IMPLICIT NONE
  INTEGER :: C,I,J,N,ID
  INTEGER :: N_DIGITS
  REAL(8) :: RAN_NUM
  INTEGER :: DIGIT(1:10,0:9)

  N = 10000000

  DO C = 1, N
     CALL RANDOM_NUMBER(RAN_NUM)
     CALL FIT_REAL(RAN_NUM)
     ID = FLOOR(RAN_NUM)
     RAN_NUM = RAN_NUM - DBLE(ID)

     !PRINT'(F15.10)',RAN_NUM
     DO I = 1,10
        RAN_NUM = RAN_NUM * 10.0D0
        ID = FLOOR(RAN_NUM)
        DIGIT(I,ID) = DIGIT(I,ID) + 1
        !PRINT'(F15.10,1X,10(I10,1X))',RAN_NUM,DIGIT(I,:)
        RAN_NUM = RAN_NUM - DBLE(ID)
     END DO
     !PRINT'(F15.10,1X,I4)',RAN_NUM,ID
     !PAUSE
  END DO

  DO I = 1,10
     DO J = 0,9
        !WRITE(121,'(I2,1X,I2,1X,I20)')I,J,DIGIT(I,J)/DBLE()
        WRITE(121,'(I2,1X,I2,1X,F20.10)')I,J,DBLE(DIGIT(I,J))/DBLE(N)
     END DO;WRITE(121,*)
  END DO

CONTAINS
  SUBROUTINE FIT_REAL(X)
    REAL(8), INTENT(INOUT) :: X
    INTEGER :: I
    IF (X < 10.0D0 .AND. X > 1.0D0) RETURN
    IF (X > 10.0D0) THEN
       DO WHILE (X > 10.0D0)
          X = X / 10.0D0
       END DO
    END IF
    IF (X < 1.0D0) THEN
       DO WHILE (X < 1.0D0)
          X = X * 10.0D0
       END DO
    END IF
    RETURN
  END SUBROUTINE FIT_REAL
END PROGRAM DIGIT_DISTRIBUTION
