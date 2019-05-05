program time

implicit none

integer,parameter :: n=1500

real*8,dimension(n,n) :: a,b,c,d

integer :: i,j,k

real*8 :: t1,t2,t3,t4,ep1,ep2

a = 1
b = 0

do i = 1,n

 b(i,i) = 1

end do

c = 0

call cpu_time(t1)

do i=1,n
  do j=1,n
    do k=1,n
    
      c(i,j) = c(i,j) + a(i,k)*b(k,j)

    end do
  end do
end do

!print*,"Hello"

call cpu_time(t2)

ep1 = t2-t1

!print*,"C:"
!call printmat2(c,n,n)

call cpu_time(t3)

d = matmul(a,b)

call cpu_time(t4)

ep2 = t4-t3

!print*,"D:"
!call printmat2(d,n,n)



print*,"Time for the loop to execute the matrix multiplication:",ep1

print*,"Time for the function to execute the matrix multiplication:",ep2


end program time



subroutine printmat2(c,n,m)

implicit none

integer,intent(in) :: n,m
real*8,dimension(n,m),intent(in) :: c
integer :: i,j

do i = 1,n
  write(*,'("|")',advance='no')
  do j = 1,m
    write(*,'(f8.3,t5)',advance='no'),c(i,j)
  end do
  write(*,'("|")',advance='yes')
end do


end subroutine
