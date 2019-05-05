! A module cannot have an interface in itself but can be exported to 
! another module and be interfaced like shown below


module inter

implicit none

contains

integer function geo_real(a0,r,n) result(an)

  implicit none
  integer,intent(in) :: a0,r,n

  an = a0*r**n

  return

end function geo_real



real function geo_int(a0,r,n) result(an)

  implicit none
  integer,intent(in) :: n
  real,intent(in) :: a0,r

  an = a0*r**n
  
  return

end function geo_int


subroutine swap_int(a,b)

implicit none

integer,intent(inout) :: a,b
integer :: c

c = a
a = b
b = c

end subroutine swap_int



subroutine swap_real(a,b)

implicit none

real,intent(inout) :: a,b
real :: c

c = a
a = b
b = c

end subroutine swap_real


end module inter






module inter2

use inter
implicit none


interface swap

  module procedure swap_int
  module procedure swap_real
  
end interface swap


interface geo_term
   
   module procedure geo_int
   module procedure geo_real
   
end interface geo_term

end module inter2



