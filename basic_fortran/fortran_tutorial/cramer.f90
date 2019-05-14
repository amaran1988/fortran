program cramer

implicit none

real*8,dimension(3,3,4) :: mat
real*8,dimension(3,1) :: b,x
integer :: i,j
real*8,external :: det2

do i = 1,4

 mat(:,:,i) = reshape((/3.0,2.0,-1.0,2.0,-2.0,0.5,-1.0,4.0,-1.0/),(/3,3/))

end do

b = reshape((/1.0,-2.0,0.0/),(/3,1/))

call cram(x,mat,b)

print*,"The A matrix is:"

do j=1,3
  write(*,'(f10.3,t5)',advance='no'),mat(i,j,2)
  end do
  write(*,*)
end do


print*,"The xB matrix is:"

do i=1,3
  do j=1,3
  write(*,'(f10.3,t5)',advance='no'),mat(i,j,3)
  end do
  write(*,*)
end do


print*,"The xC matrix is:"

do i=1,3
  do j=1,3
  write(*,'(f10.3,t5)',advance='no'),mat(i,j,4)
  end do
  write(*,*)
end do

print*,"The final answer is:"

do i=1,3

 write(*,'(f10.3,t5)',advance='no'),x(i,1)

end do
 write(*,*)

end program cramer


subroutine cram(x,mat,b)

implicit none

real*8,dimension(3,3,4),intent(inout) :: mat
real*8,dimension(3),intent(in) :: b
real*8,dimension(3,1),intent(inout) :: x
real*8,external :: det2
integer::i
real*8 :: dr

dr = det2(mat)

do i=1,3

   mat(:,i,i+1) = b
   x(i,1) = det2(mat(:,:,i+1))/dr

end do


end subroutine



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





