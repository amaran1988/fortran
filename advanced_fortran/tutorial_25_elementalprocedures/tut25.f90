module elements1
implicit none

contains

elemental subroutine ex_r(x,y)

implicit none

real,intent(inout) :: x,y
real :: temp

temp = x
x = y
y = temp

end subroutine




elemental subroutine ex_i(x,y)

implicit none

integer,intent(inout) :: x,y
integer :: temp

temp = x
x = y
y = temp

end subroutine



elemental subroutine ex_l(x,y)

implicit none

logical,intent(inout) :: x,y
logical :: temp

temp = x
x = y
y = temp

end subroutine


end module elements1


module elements2

use elements1
implicit none

interface exchange

  module procedure ex_r
  module procedure ex_i
  module procedure ex_l    

end interface exchange


end module elements2




program element

use elements2
implicit none

integer :: ai=6,bi=5
integer,dimension(10) :: ai1=6,bi1=5
real :: ar=6.0,br=5.0
real,dimension(10) :: ar1=6.0,br1=5.0
logical :: al=.true.,bl=.false.
logical,dimension(10) :: al1=.true., bl1=.false.

print*,"---------------------------------"

print*,"Before Swapping integers:"
print*,"ai:",ai
print*,"bi:",bi
print*,"ai1:",ai1
print*,"bi1:",bi1

call exchange(ai,bi)
call exchange(ai1,bi1)

print*,"After Swapping integers:"
print*,"ai:",ai
print*,"bi:",bi
print*,"ai1:",ai1
print*,"bi1:",bi1

print*,"---------------------------------"

print*,"Before Swapping real:"
print*,"ar:",ar
print*,"br:",br
print*,"ar1:",ar1
print*,"br1:",br1

call exchange(ar,br)
call exchange(ar1,br1)

print*,"After Swapping real:"
print*,"ar:",ar
print*,"br:",br
print*,"ar1:",ar1
print*,"br1:",br1

print*,"---------------------------------"

print*,"Before Swapping logical:"
print*,"al:",al
print*,"bl:",bl
print*,"al1:",al1
print*,"bl1:",bl1

call exchange(al,bl)
call exchange(al1,bl1)

print*,"After Swapping logical:"
print*,"al:",al
print*,"bl:",bl
print*,"al1:",al1
print*,"bl1:",bl1

print*,"---------------------------------"

end program element
