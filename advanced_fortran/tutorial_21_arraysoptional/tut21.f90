module matrix

implicit none

contains


function mat_mul(a,b,d) result(c)
implicit none

integer,intent(in),optional :: d
real*8,dimension(:,:),intent(in) :: a
real*8,dimension(:,:),intent(in) :: b
integer*8,dimension(2) :: s1,s2
real*8,dimension(size(a)/size(a(1,:)),size(b)/size(b(:,1))) :: c
integer*8 :: i,j,k,r1,c1,r2,c2 

s1 = shape(a)
r1 = s1(1)
c1 = s1(2)

s2 = shape(b)
r2 = s2(1)
c2 = s2(2)

c=0

print*,"The c matrix is:"

do i=1,3
  write(*,'("|")',advance='no')
  do j=1,3
     write(*,"(f10.3,t5)",advance='no'),c(i,j)
  end do
  write(*,'("|")',advance='yes')
end do

print*," "
print*," "
print*," "
if (present(d)) then

print*,"-------Debugging on----------------------"
print*," "

print*,"The a matrix is:"

do i=1,r1
  write(*,'("|")',advance='no')
  do j=1,c1
     write(*,"(f10.3,t5)",advance='no'),a(i,j)
  end do
  write(*,'("|")',advance='yes')
end do

print*,"-----------------------------------------"

print*,"The b matrix is:"

do i=1,r2
  write(*,'("|")',advance='no')
  do j=1,c2
     write(*,"(f10.3,t5)",advance='no'),b(i,j)
  end do
  write(*,'("|")',advance='yes')
end do

print*,"------------------------------------------"
print*,"r1:",r1
print*,"r2:",r2
print*,"c1:",c1
print*,"c2:",c2
print*,"------------------------------------------"
print*,"size(a)",size(a)
print*,"size(a(:,1))",size(a(1,:))
print*,"size(a)/size(a(:,1))",size(a)/size(a(1,:))
print*,"------------------------------------------"
print*,"size(b)",size(b)
print*,"size(b(1,:))",size(b(:,1))
print*,"size(b)/size(b(1,:))",size(b)/size(b(:,1))
print*,"------------------------------------------"
print*,"shape(a)",shape(a)
print*,"shape(b)",shape(b)
print*," "
print*," "

end if


if (r1 == c2) then

    do k = 1,c1
       do j = 1,c2
          do i = 1,r1
                c(i,j) = c(i,j) + a(i,k)*b(k,j)     
          end do
       end do
    end do

else 

    print*,"Matrix dimension mismatch - program abort"

end if

end function mat_mul

end module

program arrays

use matrix
implicit none

integer :: i,j
integer,parameter :: r1=3,c1=2,r2=2,c2=3
real*8,dimension(r1,c1) :: a = 1.0
real*8,dimension(r2,c2) :: b = 1.0
real*8,dimension(r1,c2) :: c
!real*8,external :: mat_mul

!interface mat

!    function mat_mul(a,b,d) result(c)
    
!       implicit none
!       integer,intent(in),optional :: d
!       real*8,dimension(:,:),intent(in) :: a
!       real*8,dimension(:,:),intent(in) :: b
!       integer*8,dimension(2) :: s1,s2
!       real*8,dimension(size(a)/size(a(:,1)),size(b)/size(b(1,:))) :: c
!       integer*8 :: i,j,k,r1,c1,r2,c2 
    
!    end function mat_mul

!end interface mat

!c =  mat(a,b,6)

c =  mat_mul(a,b,6)

print*,"---------Final answer------------------"
print*," "

print*,"The c matrix is:"

do i=1,r1
  write(*,'("|")',advance='no')
  do j=1,c2
     write(*,"(f10.3,t5)",advance='no'),c(i,j)
  end do
  write(*,'("|")',advance='yes')
end do




end program arrays
