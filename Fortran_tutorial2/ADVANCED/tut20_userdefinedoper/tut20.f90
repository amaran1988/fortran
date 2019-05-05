module maths1

implicit none


type sp
  integer :: vals
end type


interface operator(*)
   module procedure new_mul
end interface


interface operator(+)
   module procedure new_add
end interface

interface operator(.dot.)
   module procedure vec_dot_prod
end interface

contains


function new_mul(a,b) result(c)

implicit none
type(sp),intent(in)::a,b
type(sp) :: c

c%vals = a%vals*b%vals+3

end function



function new_add(a,b) result(c)
implicit none
type(sp),intent(in)::a,b
type(sp) :: c

c%vals = a%vals+b%vals+3

end function



real*8 function vec_dot_prod(a,b) result(dp)

implicit none
real*8,dimension(:),intent(in) :: a,b
!integer :: c

dp = dot_product(a,b)


end function


end module maths1





program inters

use maths1
implicit none

integer,parameter :: n=4
integer::a,b,amb,asb
type(sp) :: a1,b1,amb1,asb1
real*8,dimension(n) :: t1,t2
real*8 :: dp

a = 4
b = 6

amb = a*b
asb = a+b

print*,"Normal operations: "
print*,"Value of a =",a
print*,"Value of b =",b
print*,"a*b = ",amb
print*,"a+b = ",asb

a1%vals = 4
b1%vals = 6

amb1 = a1*b1
asb1 = a1+b1

print*,"Overloaded operations: "
print*,"Value of a =",a1
print*,"Value of b =",b1
print*,"a*b = ",amb1
print*,"a+b = ",asb1


t1=1.0
t2 = t1

dp = t1.dot.t2

print*,"t1=",t1
print*,"t2=",t2
print*,"t1 dot t2 =", dp 




end program inters
