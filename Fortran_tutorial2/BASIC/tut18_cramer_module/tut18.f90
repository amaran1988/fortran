
program cramer_ex

use maths1
 
 implicit none
 integer,parameter:: n=3
 integer, dimension(n,n) :: mat
 integer,dimension(n,1) :: X
 integer :: i,j,det_mat
 !integer,external :: detf
 integer,dimension(n,1):: D
 
 
 mat = reshape((/1,3,-3,2,1,4,3,-3,7/),(/3,3/))
 X = reshape((/-5,4,-7/),(/3,1/))
 
 print*,"The Matrix is: "

    do i=1,n
     do j=1,n
        write(*,'(i3,t3)',advance='no'), mat(i,j)
     end do
     write(*,*)
   end do
   
 print*,"The X matrix is: "

    do i=1,n
     do j=1,1
        write(*,'(i3,t3)',advance='no'), X(i,j)
     end do
     write(*,*)
   end do
   
det_mat = detf(mat,n)

 call cramer(D,mat,X,n)

 print*,"The answer is: "

    do i=1,n
     do j=1,1
        write(*,'(i3,t3)',advance='no'), D(i,j)
     end do
     write(*,*)
   end do

end program cramer_ex




