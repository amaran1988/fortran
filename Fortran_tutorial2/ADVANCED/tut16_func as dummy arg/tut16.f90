! An example by using an intrinsic function as a dummy argument (line 12, 18, 33)

program  dummy

 implicit none
 
 integer , parameter :: n=3, r=2
 integer :: per, com
 integer, external :: fact
 !real :: sine
 real, external :: sine
 real, intrinsic :: cos
 real :: y1,y2,x

 x = 0.0
 
 y1 = cos(x)
 y2 = sine(x,cos)

 call percom(per,com,fact,n,r)
 
 print*,"The cos of x is :", y1
 print*,"The sine of x is", y2
 print*,"The permutation for the given n and r is:", per
 print*,"The combination for the given n and r is:", com

end program dummy





real function sine(x,f)

implicit none

real, intent(in) :: x
real, external :: f ! This is very important to note for intrinsic funcs

 sine = f(x)

end function





subroutine percom(per, com, fact, n, r)

implicit none

integer, intent(inout)  :: per, com
integer, external :: fact
integer , intent(in) :: n,r

per = fact(n)/fact(n-r)

com = per/fact(r)


end subroutine




integer function fact(n)

implicit none

integer, intent(in)::n
integer :: i

fact = 1

do i=1,n

  fact = fact*i

end do


end function
