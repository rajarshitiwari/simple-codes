PROGRAM CALCULATE_PI
  IMPLICIT NONE
  INTEGER :: TRIALS,HITS,MAXTRIAL
  REAL(8) :: PI0,PI1,PI2,X(2)
  
  MAXTRIAL = 100000000
  HITS = 0
  DO TRIALS = 1,MAXTRIAL
     CALL RANDOM_NUMBER(X)
     X = 2.0D0 * X - 1.0D0
     IF(X(1)**2+X(2)**2 <= 1)THEN
        !WRITE(1,*)X
        HITS = HITS + 1
     END IF
  END DO
  PI0 = 4.0D0 * ATAN(1.0D0)
  PI1 = 4.0D0 * DBLE(HITS)/DBLE(MAXTRIAL)

  PRINT*,'PI FROM MC =',PI1
  PRINT*,'PI FROM SYSTEM =',PI0
END PROGRAM CALCULATE_PI
