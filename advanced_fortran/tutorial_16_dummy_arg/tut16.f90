program dummy

implicit none

integer*8,parameter :: n=6,r=3
integer*8 :: per,com
integer*8,external :: fact
real :: sine
real*8,intrinsic :: sin
real :: x=0.0
real :: y1,y2


y1 = cos(x)

y2 = sine(x,sin)

call percom(fact,n,r,per,com)

print*,"The permutation is:",per
print*,"The combination is:",com


end program dummy




real function sine(x,f)

implicit none

real,intent(in) :: x
real,external :: f

print*,"Inside the function sine, x is:",x

sine = f(x)

end function sine




recursive integer*8 function fact(n) result(fact1)

implicit none

integer*8,intent(in) :: n


if (n<=1) then

  fact1 = 1
  
else

  fact1 = (fact(n-1))*n

end if


end function fact



subroutine percom(fact,n,r,per,com)

implicit none

integer*8,intent(in) :: n,r
integer*8,intent(out) :: per,com
integer*8,external :: fact

per = fact(n)/fact(n-r)

com = fact(n)/(fact(n-r)*fact(r))


end subroutine percom
