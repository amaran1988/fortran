
module gauss_mod

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



!integer function getiden(n)

!implicit none

!integer,intent(in) :: n
!integer :: i,j

!getiden(n,n) = 0.0

!getiden(i,i) = [(1.0 ,i=1:n)] 


!end function 


real*8 function getab(a,b,n) 

implicit none

integer,intent(in) :: n
real*8,dimension(n,n),intent(in) :: a
real*8,dimension(n,1),intent(in) :: b
real*8,dimension(n,n+1) :: ab
integer::i,j

ab = 0.0

forall (i=1:n,j=1:n) 
 
 ab(i,j) = a(i,j)
 ab(i,n+1) = b(i,1)

end forall

end function 




end module gauss_mod
