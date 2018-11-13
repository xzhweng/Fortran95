program ex0512
implicit none
  integer score
  character grade

  write(*,*) "Score:"
  read(*,*) score

  select case(score)
  case(90:100)
    grade = 'A'
  case(80:89)
    grade = 'B'
  case(70:79)
    grade = 'C'
  case(60:69)
    grade = 'D'
  case(0:50)
    grade = 'E'
  case default
    grade = '?'
  end select

  write(*,"('Grade:',A1)") grade
  stop
end
