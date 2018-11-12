program q0403
implicit none
integer :: score_i, score_f

write(*,*) "Score:"
read(*,*) score_i
score_f = 10 * sqrt(real(score_i))
write(*,*) "Final score:", score_f

end
