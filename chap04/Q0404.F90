program q0404
implicit none

type :: distance
  real :: m
  real :: cm
  real :: inch
end type distance

type(distance) :: length

write(*,*) "Distance (in meter):"
read(*,*) length%m
length%cm   = length%m * 100
length%inch = length%cm / 2.54
write(*,*) length%m, "=", length%cm, "cm =", length%inch, "inch"

end
