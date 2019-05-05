! may cause segmentation fault due to memory allocation hence do the foll:
! ulimit -s
! if it is unlimited then ok otherwise do the foll:
! ulimit -s unlimited
! and check again
! this allocates the memory according to the usage rather than a fixed memory

program opmp

use omp_lib !includes the openMP libs
implicit none

integer,parameter :: n=1000

!$ integer :: num_threads=4
! the above statement is used only when openMP is used

integer :: i,j,k
integer,dimension(n,n) :: a,b,c
real :: t1,t2,ep

!$ print*,"Number of threads used",num_threads

!$ call omp_set_num_threads(num_threads)
! Sets the no of processors to be used

a = 1
b = 0

do i=1,n
  
   b(i,i) = 1

end do

c = 0

call cpu_time(t1)

!Begin the parallel block
!$omp parallel do private(j,k)
do i=1,n
     do j=1,n
        do k = 1,n
        
           c(i,j) = c(i,j)+a(i,k)*b(k,j)
           
         end do
      end do
end do      
!$omp end parallel do
!end the parallel block

call cpu_time(t2)

ep = t2-t1

!$ ep = ep/num_threads
! If not done this step, then ep shall be calculated for all threads

print*,"Time for multiplication for loop in seconds:",ep

end program opmp
