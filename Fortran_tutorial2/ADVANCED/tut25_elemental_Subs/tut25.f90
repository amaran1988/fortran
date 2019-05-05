
module start1

implicit none

contains

elemental subroutine swapr(a,b)
implicit none
real, intent(inout) :: a,b
real :: temp

temp = a
a = b
b = temp

end subroutine



elemental subroutine swapi(a,b)
implicit none
integer, intent(inout) :: a,b
integer :: temp

temp = a
a = b
b = temp

end subroutine



elemental subroutine swapl(a,b)
implicit none
logical, intent(inout) :: a,b
logical :: temp

temp = a
a = b
b = temp

end subroutine




end module start1





module start2

use start1
implicit none

interface swap

 module procedure swapr
 module procedure swapi
 module procedure swapl
  
end interface swap


end module start2






program elemental_ex

use start2
implicit none

real :: ar = 5.0, br = 6.0
real, dimension(10) :: ar1 = 5.0, br1=6.0
integer :: ai=5, bi=6
integer, dimension(10) :: ai1=5, bi1=6
logical :: al=.true., bl=.false.
logical, dimension(10) :: al1=.true., bl1=.false.

print*,"Before Swapping:"
print*,"ar=",ar
print*,"br=",br
print*,"ar1",ar1
print*,"br1",br1

call swapr(ar,br)
call swapr(ar1,br1)

print*,"After Swapping:"
print*,"ar=",ar
print*,"br=",br
print*,"ar1",ar1
print*,"br1",br1

write(*,*)

print*,"Before Swapping:"
print*,"ai=",ai
print*,"bi=",bi
print*,"ai1",ai1
print*,"bi1",bi1


call swap(ai,bi)
call swap(ai1,bi1)

print*,"After Swapping:"
print*,"ai=",ai
print*,"bi=",bi
print*,"ai1",ai1
print*,"bi1",bi1


print*,"Before Swapping:"
print*,"al=",al
print*,"bl=",bl
print*,"al1",al1
print*,"bl1",bl1

call swap(al,bl)
call swap(al1,bl1)

print*,"After Swapping:"
print*,"al=",al
print*,"bl=",bl
print*,"al1",al1
print*,"bl1",bl1


end program elemental_ex

