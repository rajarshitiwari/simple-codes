PROGRAM MAIN
  IMPLICIT NONE
  INTEGER, PARAMETER :: LSIZE = 16
  INTEGER :: I1,I2,R1,R2,L1,L2

  DO I1 = 0, LSIZE - 1
     L1 = MERGE(0,1, I1 == 0)
     R1 = MERGE(0,1, I1 == LSIZE - 1)
     DO I2 = 0, LSIZE - 1
        L2 = MERGE(0,1, I2 == 0)
        R2 = MERGE(0,1, I2 == LSIZE - 1)
        WRITE(*,'(" "Z1,Z1" ")',ADVANCE='NO')I1,I2
     END DO;WRITE(*,*)
  END DO
  WRITE(*,*)

  DO I1 = 0, LSIZE - 1
     L1 = MERGE(0,1, I1 == 0)
     R1 = MERGE(0,1, I1 == LSIZE - 1)
     DO I2 = 0, LSIZE - 1
        L2 = MERGE(0,1, I2 == 0)
        R2 = MERGE(0,1, I2 == LSIZE - 1)
        WRITE(*,'(" "I1" ")',ADVANCE='NO')R2*L1
     END DO;WRITE(*,*)
  END DO
  WRITE(*,*)

  DO I1 = 0, LSIZE - 1
     L1 = MERGE(0,1, I1 == 0)
     R1 = MERGE(0,1, I1 == LSIZE - 1)
     DO I2 = 0, LSIZE - 1
        L2 = MERGE(0,1, I2 == 0)
        R2 = MERGE(0,1, I2 == LSIZE - 1)
        WRITE(*,'(" "I1" ")',ADVANCE='NO')R1*L2!R1+R2
     END DO;WRITE(*,*)
  END DO
  WRITE(*,*)

  DO I1 = 0, LSIZE - 1
     L1 = MERGE(0,1, I1 == 0)
     R1 = MERGE(0,1, I1 == LSIZE - 1)
     DO I2 = 0, LSIZE - 1
        L2 = MERGE(0,1, I2 == 0)
        R2 = MERGE(0,1, I2 == LSIZE - 1)
        WRITE(*,'(" "I1" ")',ADVANCE='NO')R2*L1*R1*L2!R1+R2
     END DO;WRITE(*,*)
  END DO
  WRITE(*,*)

END PROGRAM MAIN
