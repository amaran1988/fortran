
! (1) Runs faster for intrinsic functions and subroutines than do loops
! (2) Remember that matrix multiplication via columns are much faster 
!     than by doing via rows because fortran is column contagious

program time_check


 implicit none
 
 integer*8,parameter :: n=1000
 
 real*8, dimension(n,n) :: a,b,c,c2
 
 integer*8 :: i,j,k
 real*8 :: t1,t2,t3,t4,ep1,ep2
 
 a = 1.0
 
 b = 0.0
 
 do i=1,n
 
    b(i,i) = 1.0
 
 end do

 c = 0.0
 c2 = 0.0
 
 
 call cpu_time(t1)
 
 do i=1,n
   do j=1,n
     do k=1,n
        c(i,j) = c(i,j) + a(i,k)*b(k,j)
     end do
    end do
 end do
 
 call cpu_time(t2)

 ep1 = t2-t1
 
 call cpu_time(t3)
 
 c2 = matmul(a,b)
 
 call cpu_time(t4)

 
 ep2 = t4-t3
 
 print*,"The time taken for the loop :",ep1
 print*,"The time taken for the command:",ep2
 
 
end program time_check
