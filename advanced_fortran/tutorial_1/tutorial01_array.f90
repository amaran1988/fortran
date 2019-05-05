
program array

use maths1
implicit none

integer,parameter :: r=3, c=2
real*8 :: prod,sum1
real*8,dimension(1) :: dp
real*8,dimension(r,c) :: a1
real*8,dimension(c,r) :: a2,at
real*8,dimension(r,r) :: a3
real*8,dimension(r*c) :: b1,b2

a1 = reshape((/1,2,3,4,5,6/),(/r,c/))
a2 = reshape((/1,2,3,4,5,6/),(/c,r/))
b1 = reshape((/1,2,3,4,5,6/),(/r*c/))
b2 = b1

dp = dot_product(b1,b2)
at = transpose(a1)
a3 = matmul(a1,a2)
prod = product(a1)
sum1 = sum(a1)

print*,"The matrix a1 is: "
call printmat2(a1,r,c)

print*,"The matrix a2 is:"
call printmat2(a2,c,r)

print*,"The matrix b1 and b2 are:"
call printmat1(b1,r*c)

print*,"The maximum value of a1 is:",maxval(a1)
print*,"The minimum value of a2 is",minval(a1)
print*,"The sum of a1 is:",sum1
print*,"The product of a1 is:",prod

print*,"The transpose of a1 is:"
call printmat2(at,c,r)

print*,"The matrix multiplication of a1 and a2 is:"
call printmat2(a3,r,r)

print*,"The dot product of b1 and b2 is: ",dp

end program array
