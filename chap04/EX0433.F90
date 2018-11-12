program ex0433
implicit none
  integer :: a=1
  real :: b=2
  real :: c
  c=a
  write(*,"(F5.2)") c
  c=a/b
  write(*,"(F5.2)") c
end
