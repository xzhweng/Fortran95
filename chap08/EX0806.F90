program ex0806
implicit none
  integer, parameter :: players = 5
  real :: angle(players) = (/ 30.0, 45.0, 35.0, 50.0, 40.0 /)
  real :: speed(players) = (/ 25.0, 20.0, 21.0, 27.0, 22.0 /)
  real :: distance(players)
  integer :: i

  do i=1, players
    call Get_Distance(angle(i), speed(i), distance(i))
    write(*,"('Phayer ', I1, ' =', F8.2)") i, distance(i)
  end do

  stop
end program ex0806

subroutine Angle_to_Rad(angle, rad)
  implicit none
  real angle, rad
  real, parameter :: pi = 3.14159

  rad = angle * pi / 180.0

  return
end subroutine Angle_to_Rad

subroutine Get_Distance(angle, speed, distance)
implicit none
  real angle, speed
  real distance
  real rad, Vx, time
  real, parameter :: G = 9.81

  call Angle_to_Rad(angle, rad)
  Vx   = speed * cos(rad)
  time = 2.0 * speed * sin(rad) / G
  distance = Vx * time

  return
end subroutine Get_Distance
