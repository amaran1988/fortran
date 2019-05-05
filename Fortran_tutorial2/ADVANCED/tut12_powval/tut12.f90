
program power_ex

implicit none

integer, parameter :: p = 4, v=3, n=10, x=5
integer, dimension(n) :: a
integer, external :: power, poly
integer :: crap,crap2

a = (/1,2,3,4,5,6,7,8,9,10/)
 

crap = power(v,p)
crap2 = poly(x,a,n)

print*,"The power value of ",v,"is",crap

print*,"The polynomial value at x=",x,"is:",crap2


end program power_ex

integer function power(v,p)

implicit none

integer, intent(in) :: v, p
integer :: i
power = 1

do i = 1,p

   power = power*v

end do

end function


integer function poly(x,a,n)

implicit none

integer, intent(in) :: x,n
integer, dimension(0:n) :: a
integer :: i

poly = 0

do i=0,n

   poly = poly + a(i)*x**(i)

end do

end function
