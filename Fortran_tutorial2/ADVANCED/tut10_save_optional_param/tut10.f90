
module facts

integer :: counter
save

contains

recursive integer function fact1(n,debug) result(fact)

  integer,intent(in) :: n
  integer, optional, intent(in) :: debug
  !integer, save :: counter=0 
  
  fact=1
  counter = counter + 1
  !print*,"Number of function calls:",counter
  
 if (n==0 .or. n==1) then
     
     if (present(debug) .and. debug==1) then
        print*,"The value of n is:",n
        fact = 1
        return
     end if
     
     fact = 1
     
 else  
 
     if (present(debug) .and. debug==1) then
        print*,"The value of n is:",n
        fact = n*fact1(n-1,debug)
        return
     end if
     
     fact = n*fact1(n-1,debug)
     
     
 end if


end function fact1


end module facts







program paramssave

use facts
implicit none

integer :: n,i,f
integer :: debug

debug = 1

print*,"Enter the number of factorials ? "
read*,n


do i=1,n

  f = fact1(i,debug)
  print*,"The factorial for",i,"! is:",f

end do

print*,"Number of function calls:",counter


end program paramssave


