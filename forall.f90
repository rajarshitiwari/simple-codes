PROGRAM MAIN

  IMPLICIT NONE
  
  INTEGER, PARAMETER :: N = 4000
  REAL(8), DIMENSION(N,N) ::A,B
  INTEGER :: I,J
  REAL(8) :: x,y
  
  CALL CPU_TIME(X)
  FORALL (I = 1:N,J = 1:N)
     A(I,J) = DBLE(I + J)
     B(I,J) = DBLE(I - J**2)
  END FORALL
  CALL CPU_TIME(Y)
  PRINT*,'FORALL',Y - X
  
  CALL CPU_TIME(X)
  DO I = 1,N
     DO J = 1,N
        A(I,J) = DBLE(I + J)
        B(I,J) = DBLE(I - J**2)
     END DO
  END DO
  CALL CPU_TIME(Y)
  PRINT*,'DO',Y - X
  


  PRINT*,"DONE"
END PROGRAM MAIN
