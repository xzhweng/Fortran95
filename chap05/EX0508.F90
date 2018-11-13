program ex0508
implicit none

  real x,y
  integer ans

  write(*,*) "Input (x,y)"
  read(*,*) x, y

  if (x > 0) then
    if (y > 0) then
      ans = 1
    else if (y < 0) then
      ans = 4
    else
      ans = 0
    end if
  else if (x < 0) then
    if (y > 0) then
      ans = 2
    else if (y < 0) then
      ans = 3
    else
      ans = 0
    end if
  else
    ans = 0
  end if

  if (ans /= 0) then
    write(*,"('第', I1, '象限')") ans
  else
    write(*,*) "落在轴上"
  end if

stop
end program ex0508
