module maths

implicit none

contains

recursive integer*8 function fact1(n,debug) result(f1)
implicit none
integer :: counter = 0
integer*8,intent(in) :: n
integer*8,intent(in),optional :: debug

!save counter !Only use if necessary cuz gfortran has issues with this 

counter = counter+1

print*,"Counter: ",counter


if (n<=1) then
	
   if (present(debug) .and. debug==1) then
     print*,"The value of n is: ",n
   end if
   
   f1 = 1
   return
else 
   if (present(debug) .and. debug==1) then
     print*,"The value of n is:",n
     f1 = fact1(n-1,debug)*n
     return
   end if
   
   f1 = fact1(n-1)*n
   return
   
end if

end function fact1


end module maths


program facto

use maths
implicit none
integer*8 :: i,n,res,debug
 
debug = 1

print *,"Enter the value of n"
read*,n

do i=1,n
  res = fact1(i,debug)
  print*,"The Factorial of ",i,"! is",res
end do

!print*,"The function has been called ",counter," times"

end program facto
