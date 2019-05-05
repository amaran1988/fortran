
module new_ops


implicit none


type sp
    integer :: vals
end type sp


interface operator(+)
    module procedure new_add
end interface


interface operator(*)
    module procedure new_mul
end interface


interface operator(.dot.)
    module procedure vector_dot_prod
end interface

contains

   function new_add(a,b) result(c)

      implicit none
      type(sp),intent(in) :: a,b
      type(sp) :: c

      c%vals = a%vals+b%vals+3

   end function



   function new_mul(a,b) result(c)

      implicit none
      type(sp),intent(in) :: a,b
      type(sp) :: c

      c%vals = a%vals*b%vals+3

   end function



   real*8 function vector_dot_prod(a,b) result(dp)

      implicit none
      real*8,dimension(:),intent(in):: a, b
   
      dp = dot_product(a,b)

   end function


end module 




program ops

use new_ops
implicit none

integer :: a,b,apb,amb
type(sp) :: a1,b1,apb1,amb1
integer,parameter :: n = 5
real*8,dimension(n) :: v1,v2 
real*8 :: dp

a = 5
b = 6

apb = a + b
amb = a * b

a1%vals = 5
b1%vals = 6

apb1 = a1 + b1
amb1 = a1 * b1

v1 = 1.0
v2 = 1.0

dp = v1.dot.v2

print*,"----------------------"

print*,"Normal operation:"
print*,"a:",a
print*,"b:",b
print*,"apb:",apb
print*,"amb:",amb

print*,"----------------------"

print*,"Overriding operation:"
print*,"a1:",a1%vals
print*,"b1",b1%vals
print*,"apb1",apb1
print*,"amb1",amb1

print*,"----------------------"

print*,"v1:",v1
print*,"v2:",v2
print*,"dp:",dp

print*,"----------------------"


end program ops
