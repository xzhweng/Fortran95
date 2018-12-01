program ex0806
implicit none
  integer, parameter :: players = 5
  real :: angle(players) = (/ 30.0, 45.0, 35.0, 50.0, 40.0 /)
  real :: speed(players) = (/ 25.0, 20.0, 21.0, 27.0, 22.0 /)
  real :: distance(players)
  real, external :: Get_Distance
  integer :: i

  do i=1, players
    distance(i) = Get_Distance(angle(i), speed(i))
    write(*,"('Phayer ', I1, ' =', F8.2)") i, distance(i)
  end do

  stop
end program ex0806

real function Angle_to_Rad(angle)
  implicit none
  real angle
  real, parameter :: pi = 3.14159

  Angle_to_Rad = angle * pi / 180.0

  return
end function Angle_to_Rad

real function Get_Distance(angle, speed)
implicit none
  real angle, speed
  real rad, Vx, time
  real, external :: Angle_to_Rad
  real, parameter :: G = 9.81

  rad  = Angle_to_Rad(angle)
  Vx   = speed * cos(rad)
  time = 2.0 * speed * sin(rad) / G
  Get_Distance = Vx * time

  return
end function Get_Distance
