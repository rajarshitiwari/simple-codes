FUNCTION LINSPACE(A, B, NUM) RESULT(ARR)
  IMPLICIT NONE
  REAL(8), INTENT(IN) :: A, B
  INTEGER, INTENT(IN) :: NUM
  REAL(8), POINTER, DIMENSION(:) :: ARR
  INTEGER :: I
  REAL(8) :: DX
  !IF (ALLOCATED(ARR)) DEALLOCATE(ARR)
  ALLOCATE(ARR(NUM))
  DX = (B - A) / DBLE(NUM - 1)
  DO I = 0, NUM - 1
     ARR(I+1) = DBLE(I) * DX + A
  END DO
END FUNCTION LINSPACE




PROGRAM MAIN
  IMPLICIT NONE
  INTEGER, PARAMETER :: NUM = 11
  REAL(8) :: X(NUM), XA, XB
  INTEGER :: I
  INTERFACE
     FUNCTION LINSPACE(A, B, NUM) RESULT(ARR)
       IMPLICIT NONE
       REAL(8), INTENT(IN) :: A, B
       INTEGER, INTENT(IN) :: NUM
       REAL(8), POINTER, DIMENSION(:) :: ARR
     END FUNCTION LINSPACE
  END INTERFACE
  
  XA = 0.0D0
  XB =  1.0D0
  X = LINSPACE(XA, XB, NUM)

  X = LINSPACE(XA, XB, NUM)
  DO I = 1, NUM
     PRINT*, X(I)
  END DO
  
END PROGRAM MAIN
