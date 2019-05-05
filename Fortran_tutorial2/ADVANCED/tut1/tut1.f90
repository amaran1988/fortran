
program array_funcs

use maths1

implicit none

real*8 :: prod, sum1
integer, parameter :: r=3, c=2

real*8, dimension(1) :: dp
real*8, dimension(r,c) :: a1
real*8, dimension(r,r) :: a3
real*8, dimension(c,r) :: at,a2
real*8, dimension(r*c) :: b1,b2

a1 = reshape((/1,2,3,4,5,6/),(/r,c/))
a2 = reshape((/1,2,3,4,5,6/),(/c,r/))
b1 = reshape((/1,2,3,4,5,6/),(/r*c/))
b2 = reshape((/1,2,3,4,5,6/),(/c*r/))

dp = dot_product(b1,b2)
at = transpose(a1)
a3 = matmul(a1,a2)
prod = product(a1)
sum1 = sum(a1)


print*,"The matrix a1 is:"
call print_mat2(a1,r,c)

print*,"The matrix a2 is:"
call print_mat2(a2,c,r)

print*,"The matrix b1 and b2 is:"
call print_mat1(b1,r*c)


print*,"The maximum value of a1 is: ",maxval(a1)

print*,"The minimum value of a1 is: ",minval(a1)

print*,"The sum of a1 is: ", sum1

print*,"The prod of a1 is: ",prod

print*,"The Transpose of a1 is:"
call print_mat2(at,c,r)

print*,"The dot product of b1 and b2: ",dp

end program array_funcs
