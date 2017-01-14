      PROGRAM ex0422
      INTEGER A
      REAL B
      COMPLEX C
      LOGICAL D
      CHARACTER*(20) E
      A=10
      B=12.34
      C=(1,2)
      D=.true.
      E="Fortran"
      WRITE(*,100) A
      WRITE(*,200) B
      WRITE(*,300) C
      WRITE(*,400) D
      WRITE(*,500) E
100   FORMAT(1X,I5)
200   FORMAT(1X,F5.2)
300   FORMAT(1X,F4.1,F4.1)
400   FORMAT(1X,L3)
500   FORMAT(1X,A10)
      END
