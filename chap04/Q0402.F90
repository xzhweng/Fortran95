program ex0402
implicit none
real, parameter :: pi = 3.14159
real :: radius, area

write(*,*) "Radius:"
read(*,*) radius
area = pi * radius**2
write(*,*) "Area = ", area
end
