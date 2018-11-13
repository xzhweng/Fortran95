program ex0501
implicit none
  real(kind=4) :: speed

  write(*,*) "Speed:"
  read(*,*) speed
  if ( speed > 100.0) then
    write(*,*) "Slow down."
  end if
stop
end
