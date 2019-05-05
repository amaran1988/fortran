
module maths1


contains




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


subroutine printmat1(b,n)

integer,intent(in) :: n
real*8,dimension(n),intent(in) :: b
integer :: i

do i=1,n

   write(*,'("|",f8.3," |")',advance='yes'),b(i)
  
end do

end subroutine


real*8 function mean1(x,n)

implicit none
integer,intent(in) :: n
real*8,dimension(n),intent(in) :: x

mean1 = sum(x)/real(n)

end function


real*8 function std(x,n)

implicit none
integer,intent(in) :: n
real*8,dimension(n),intent(in) :: x

std = (var1(x,n))**0.5

end function


real*8 function var1(x,n)

implicit none
integer,intent(in) :: n
real*8,dimension(n),intent(in) :: x
integer :: i

var1 = mean1([(x(i)**2,i=1,n)],n)-(mean1(x,n))**2

end function



real*8 function cov(x,y,n)

implicit none
integer,intent(in) :: n
real*8,dimension(n),intent(in) :: x,y
integer :: i

cov = mean1([(x(i)*y(i),i=1,n)],n)- mean1(x,n)*mean1(y,n)

end function



real*8 function corr(x,y,n)

implicit none
integer,intent(in) :: n
real*8,dimension(n),intent(in) :: x,y

corr = cov(x,y,n)/(std(x,n)*std(y,n))

end function

end module
