program ex0502
implicit none
  real(kind=4) :: height, weight

  write(*,*) "Height:"
  read(*,*) height
  write(*,*) "Weight:"
  read(*,*) weight

  if ( weight > height - 100.0 ) then
    write(*,*) "Too fat!"
  else
    write(*,*) "Under control."
  end if

stop
end
