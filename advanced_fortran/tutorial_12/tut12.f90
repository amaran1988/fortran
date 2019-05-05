program tut12

implicit none

integer*8,parameter :: n = 3
integer*8 :: x
integer*8,dimension(0:n) :: a 
integer*8 :: poly_main,power_main
integer*8, external :: poly,power

print*,"Enter a value for x"

read*,x

a = (/3,2,2,1/)

poly_main = poly(x,a,n)
power_main = power(x,n)

print*,"The polynomial result is: ",poly_main
print*,"The coefficients are: ",a
print*,"The power value is: ",power_main


end program tut12


integer*8 function poly(x,a,n)

implicit none

integer*8,intent(in) :: x,n
integer*8,intent(in),dimension(0:n) :: a
integer*8 :: i

poly = 0

do i=0,n

  poly = poly+a(i)*(x**(i))

end do

end function


integer*8 function power(x,n)

implicit none

integer*8,intent(in) :: x,n
integer*8 :: i

power = int(1)

do i=0,n
  power = power*x
end do

end function
