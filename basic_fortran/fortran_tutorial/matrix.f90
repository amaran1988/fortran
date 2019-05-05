program matrix

implicit none

real*8,dimension(3,3)::mat
logical,dimension(3,3)::mask
real*8,dimension(2,2)::slice
integer::i,j

mat = reshape((/1,4,7,2,3,5,7,8,9/),(/3,3/))
mask = .true.
mask(:,3) = .false.
mask(3,:) = .false.

slice = reshape(pack(mat,mask),(/2,2/))

print*,"The input matrix is:"

do i=1,3

   do j=1,3

     write(*,'(f10.3,t5)',advance='no'),mat(i,j)
   
   end do
   
   write(*,*)
   !print*,new_line("A")

end do


print*,"The sliced matrix is:"

do i=1,2

   do j=1,2

     write(*,'(f10.3,t3)',advance='no'),slice(i,j)
   
   end do
   
   !write(*,*)
   print*,new_line("A")

end do


end program matrix
