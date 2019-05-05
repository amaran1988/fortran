
! Determinant of a matrix

program deter

implicit none

integer,parameter:: n=5
integer, dimension(n,n) :: mat
integer :: det
integer,external :: detf
integer :: i,j

!mat = reshape((/2,5,6,8/),(/2,2/))
!mat = reshape((/43,72,51,94,93,22,41,51,11,15,35,67,34,45,56,67/),(/4,4/))
mat = reshape((/3,4,5,6,7,8,9,9,8,7,6,55,4,3,2,1,5,4,33,2,1,6,7,8,9/),(/5,5/))
!mat=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)) ! det = 0
!mat=reshape((/6,4,2,1,-2,8,1,5,7/),(/3,3/)) ! det = -306

print*,"The Matrix is: "

    do i=1,n
     do j=1,n
        write(*,'(i3,t3)',advance='no'),mat(i,j)
     end do
     write(*,*)
   end do

det = detf(mat,n)

print*,"The determinant of the Matrix is: ", det

end program deter




recursive integer function detf(mat,n) result(det)

implicit none
integer,dimension(n,n),intent(in) :: mat
integer,dimension(n-1,n-1) :: sl1
integer,intent(in) :: n
integer :: i

det = 0

   if (n==2) then
 
      det = mat(1,1)*mat(2,2)-mat(2,1)*mat(1,2)
      return
 
   else
   
      do i=1,n
         call slice(sl1,mat,n,1,i) 
         det = det+((-1)**(1+i))*mat(1,i)*detf(sl1,n-1)
      
      end do

   end if
   
end function detf



subroutine slice(sl,mat,n,row,column)

implicit none

integer,intent(in) :: row,column,n
integer,dimension(n,n),intent(in) :: mat
integer,dimension(n-1,n-1),intent(out) :: sl
logical,dimension(n,n) :: mask

mask = .true.
mask(:,column) = .false.
mask(row,:) = .false.


sl = reshape(pack(mat,mask),(/n-1,n-1/))


end subroutine slice
