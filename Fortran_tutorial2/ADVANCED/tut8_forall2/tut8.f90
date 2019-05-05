! cannot call subroutines inside the forall nested loop

module get


contains

function getiden(n)

implicit none

integer,intent(in) :: n
integer :: i
real*8, dimension(n,n) :: getiden

getiden = 0.0

do i=1,n

  getiden(i,i) = 1.0

end do


end function getiden


subroutine printmatR(a,n,m)

implicit none

integer,intent(in) :: n,m
real*8,dimension(n,m),intent(in) :: a
integer :: i,j


 do i=1,n
    write(*,'("|")',advance='no')
    do j=1,m
      write(*,'(f8.3,t3)',advance='no'),a(i,j)
    end do
    write(*,'("|")')
 end do


end subroutine
 



recursive real*8 function detf(mat,n) result(det)

implicit none
real*8,dimension(n,n),intent(in) :: mat
real*8,dimension(n-1,n-1) :: sl1
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
real*8,dimension(n,n),intent(in) :: mat
real*8,dimension(n-1,n-1),intent(out) :: sl
logical,dimension(n,n) :: mask

mask = .true.
mask(:,column) = .false.
mask(row,:) = .false.


sl = reshape(pack(mat,mask),(/n-1,n-1/))


end subroutine slice



end module get




program gauss

use get
implicit none

integer,parameter :: n=3

real*8,dimension(n,n) :: a,I,I2
real*8,dimension(n,1) :: b
real*8,dimension(n,n+1) :: ab,aib
real*8 :: det
integer*8 :: j,k,m,p,q,r
real*8 :: t1


a = reshape((/3.0,2.0,-1.0,2.0,-2.0,0.5,-1.0,4.0,-1.0/),(/n,n/))

b = reshape((/1.0,-2.0,0.0/),(/n,1/))

det = detf(a,n)

I = 0.0
ab = 0.0
I2 = getiden(n)

do j=1,n

  I(j,j) = 1.0

end do

do k=1,n
  ab(k,n+1) = b(k,1)
  do m=1,n
     ab(k,m) = a(k,m)
  end do
end do


aib = ab

print*,"The matrix A is:"
call printmatR(a,n,n)
write(*,*)
print*,"The determinant of matrix A is:", det
write(*,*)
print*,"The matrix B is:"
call printmatR(b,n,1)
write(*,*)
print*,"The identity matrix is:"
call printmatR(I,n,n)
write(*,*)
print*,"The identity matrix is:"
call printmatR(I2,n,n)
write(*,*)
print*,"The AB matrix is:"
call printmatR(ab,n,n+1)
write(*,*)


! Gauss Elimination

do p=1,n-1
  do q=p+1,n
    t1 = aib(q,p)
    do r=p,n+1
    
       aib(q,r) = aib(q,r)-(aib(p,r)*t1/aib(p,p))
    
    end do
    print*,"The matrix AiB during the process: "
    call printmatR(aib,n,n+1)
  end do
end do


!Throws an error for the forall one liner since p not used in the left
!forall(p=1:n-1,q=p+1:n,r=p:n+1) 
!   ab(q,r) = ab(q,r)-(ab(p,r)*ab(q,p)/ab(p,p))
!end forall

forall (p=1:n-1)
  forall (q=p+1:n)
     forall(r=p:n+1)
    
       ab(q,r) = ab(q,r)-(ab(p,r)*ab(q,p)/ab(p,p))
    
    end forall
  end forall
end forall


write(*,*)
print*,"The gauss eliminated matrix with forall: "
call printmatR(ab,n,n+1)


end program gauss









