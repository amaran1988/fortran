
program decimat

implicit none

real :: a
integer :: b

a = 47.38
b = 67

print*,"The real of b in decimal is: "
write(*,'(i14)'),b

print*,"The real of b in binary is: "
write(*,'(b20)'),b

print*,"The real of b in octal is: "
write(*,'(o20)'),b

print*,"The real of b in hexadecimal is: "
write(*,'(z20)'),b

end program decimat
