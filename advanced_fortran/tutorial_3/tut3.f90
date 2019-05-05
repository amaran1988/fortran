
program tut3

use maths1

implicit none
integer,parameter :: n=5
real*8 :: meanv1,varv1,stddev1,cov12
real*8 :: meanv2,varv2,stddev2,corr12

real*8,dimension(n) :: vals1,vals2
!integer :: i,j

vals1 = (/48,49,50,51,52/)
vals2 = (/34,56,78,34,31/)

meanv1 = mean1(vals1,n)
meanv2 = mean1(vals2,n)

varv1 = var1(vals1,n)
varv2 = var1(vals2,n)

stddev1 = std(vals1,n)
stddev2 = std(vals2,n)

cov12 = cov(vals1,vals2,n)

corr12 = corr(vals1,vals2,n)

print*,"The first value is:"
call printmat1(vals1,n)

print*,"The second value is:"
call printmat1(vals2,n)

print*,"The result for value 1:"
call printmat1((/meanv1,varv1,stddev1/),3)

print*,"The result for value 2:"
call printmat1((/meanv2,varv2,stddev2/),3)

print*,"The covariance is:",cov12

print*,"The correlation is:",corr12


end program tut3
