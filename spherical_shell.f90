PROGRAM GENERATE_POINTS_ON_SHERICAL_SHELL

  IMPLICIT NONE
  REAL(8),PARAMETER :: PI = 4.0D0 * ATAN(1.0D0), TWOPI = 2.0D0 * PI
  INTEGER :: I, NUM_POINTS
  REAL(8) :: AR, THETA, PHI, R1, R2, X(3), VEC(3)

  NUM_POINTS = 1000000

  R1 = 0.8D0
  R2 = 1.0D0

  DO I = 1, NUM_POINTS
     
     CALL RANDOM_NUMBER(X)
     AR = (R2 - R1) * X(1) + R1
     THETA = PI * X(2)
     PHI = TWOPI * X(3)
     
     VEC(3) = AR * COS(THETA)
     VEC(2) = AR * SIN(THETA) * COS(PHI)
     VEC(1) = AR * SIN(THETA) * SIN(PHI)
     
     WRITE(1,'(3(F20.10,1X))')VEC
  END DO

  DO I = 1, NUM_POINTS
     
     CALL RANDOM_NUMBER(X)
     AR = ((R2**3 - R1**3) * X(1) + R1**3)**(1.0D0/3.0D0)
     THETA = ACOS(2.0D0 * X(2) - 1.0D0)
     PHI = TWOPI * X(3)
     
     VEC(3) = AR * COS(THETA)
     VEC(2) = AR * SIN(THETA) * COS(PHI)
     VEC(1) = AR * SIN(THETA) * SIN(PHI)
     
     WRITE(2,'(3(F20.10,1X))')VEC
  END DO

END PROGRAM GENERATE_POINTS_ON_SHERICAL_SHELL
