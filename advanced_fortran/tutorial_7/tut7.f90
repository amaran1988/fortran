program tut7

implicit none

integer,dimension(3,3) :: a,b,b1,b2,b3
integer :: i,j

a = reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
b = a
b3 = a
b1 = -1

!---------------- B & B3 dont give same result--------------------------

do i = 1,3 
  do j = 1,3
    b(i,j) = b(i,i)*b(j,j)
  end do
end do

forall(i=1:3,j=1:3) b3(i,j) = b3(i,i)*b3(j,j)

!----------------------------------------------------------------------

!---------------- B1 & B2 can give same result--------------------------
do i = 1,3 
  do j = 1,3
    b2(i,j) = a(i,i)*a(j,j)
  end do
end do


forall(i=1:3,j=1:3, a(i,j)/=9 .and. i/=2) ! Except for the condition here
   b1(i,j) = a(i,i)*a(j,j)
end forall

!-----------------------------------------------------------------------

print*,"The Matrix A is:"
call printmat2(a,3,3)

print*,"The Matrix B1:"
call printmat2(b1,3,3)

print*,"The Matrix B2:"
call printmat2(b2,3,3)

print*,"The Matrix B:"
call printmat2(b,3,3)

print*,"The Matrix B3:"
call printmat2(b3,3,3)

end program tut7


subroutine printmat2(c,n,m)

implicit none

integer,intent(in) :: n,m
integer,dimension(n,m),intent(in) :: c
integer :: i,j

do i = 1,n
  write(*,'("|")',advance='no')
  do j = 1,m
    write(*,'(i5,t5)',advance='no'),c(i,j)
  end do
  write(*,'("|")',advance='yes')
end do


end subroutine
