PROGRAM MADELUNG_CONSTANT
  IMPLICIT NONE
  INTEGER :: NUM
  REAL(8) :: T1,T2
  REAL(8) :: TERM,SUM
  INTEGER :: I1,I2,I3

  OPEN(1,FILE='madelung_constant.dat')
  DO NUM = 10, 1000,10
     CALL CPU_TIME(T1)
     SUM = 0.0D0
     DO I1 = -NUM, NUM
        DO I2 = -NUM, NUM
           DO I3 = -NUM, NUM
              IF (I1==0 .AND. I2==0 .AND. I3==0)CYCLE
              TERM = SQRT(DBLE(I1*I1+I2*I2+I3*I3))
              TERM = ((-1)**(I1+I2+I3)) / TERM
              SUM = SUM + TERM
           END DO
        END DO
     END DO
     CALL CPU_TIME(T2)
     PRINT'("NUM= ",I6,1X,"TIME= ",F10.2,1X,"M= ",F20.10)',NUM,T2-T1,SUM
     WRITE(1,'(I6,1X,F10.2,1X,F20.10)')NUM,T2-T1,SUM
  END DO
END PROGRAM MADELUNG_CONSTANT
