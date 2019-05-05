program deter

implicit none

real*8,dimension(3,3) :: mat
real*8,external :: det2
real*8 :: final_det

integer :: i,j 

!mat = reshape((/2,4,6,8,7,4,9,5,6/),(/3,3/))
mat = reshape((/1,4,7,2,3,5,7,8,9/),(/3,3/))
!mat = reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
!mat = reshape((/3,6,9,2,5,7,1,9,8/),(/3,3/))
!mat = reshape((/-4,6,9,-2,-5,8,9,-1,7/),(/3,3/))

do i=1,3
   do j = 1,3
      write(*,'(f10.3,t5)',advance='no'),mat(i,j)
   end do
    write(*,*)
end do


final_det = det2(mat)

print*,"The determinant of this shit is",final_det

end program deter


real*8 function det2(mat)

implicit none

real*8,dimension(3,3),intent(in) :: mat
logical,dimension(3,3,3) :: lat
real*8,dimension(2,2,3) :: terms
real*8,dimension(3) :: terms_det
integer::i

lat = .true.

do i=1,3

 lat(1,:,i) = .false.
 lat(:,i,i) = .false.
 terms(:,:,i) = reshape(pack(mat,lat(:,:,i)),(/2,2/))
 terms_det(i) = terms(1,1,i)*terms(2,2,i)-terms(1,2,i)*terms(2,1,i)
 
end do

det2 = mat(1,1)*terms_det(1)-mat(1,2)*terms_det(2)+mat(1,3)*terms_det(3)

end function
