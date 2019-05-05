


module maths1

contains


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



subroutine cramer(D,mat,X,n) 

implicit none
integer :: i,j,k
integer,intent(in) :: n
integer,dimension(n,n),intent(in) :: mat
integer,dimension(n),intent(in) :: X
integer,dimension(n,n,4) :: slick
integer,dimension(n),intent(inout) :: D
!integer,external :: detf

slick(:,:,1) = mat

do i=1,n

  slick(:,:,i+1) = slick(:,:,1)
  slick(:,i,i+1) = X(:)
  
   print*,"The X",i," matrix is: "

    do j=1,n
     do k=1,n
        write(*,'(i3,t3)',advance='no'), slick(j,k,i+1)
     end do
     write(*,*)
   end do


  D(i) = detf(slick(:,:,i+1),n)/detf(mat,n)

end do


end subroutine cramer


end module maths1
