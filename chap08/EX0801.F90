program ex0801
  implicit none
  call message()
  call message()
  stop
end

subroutine message()
  implicit none
  write(*,*) "Hello."
  return
end
