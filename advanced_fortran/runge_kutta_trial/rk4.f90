program rk4

implicit none

integer,parameter::n=60

real*8,dimension(0:n)::x,y
real*8 :: h,F1,F2,F3,F4
integer :: i

!y(0) = 1
!h=0.1

h=0.1
y(0) = 5
x(0) = 0


10 format(f25.15,5X,f25.15)

open(unit=1,file="data.dat")
write(unit=1,fmt=10),x(0),y(0)

do i=1,n

  call sub_rk4(h,x(i-1),y(i-1),F1)
  call sub_rk4(h,x(i-1)+(h/2.0),y(i-1)+(F1/2.0),F2)
  call sub_rk4(h,x(i-1)+(h/2.0),y(i-1)+(F2/2.0),F3)
  call sub_rk4(h,x(i-1)+(h/1.0),y(i-1)+(F3/1.0),F4)
  
  y(i) = y(i-1) + (1.0/6.0)*(F1+2.0*F2+2.0*F3+F4)
  x(i) = x(i-1) + h
  
  write(unit=1,fmt=10),x(i),y(i)

end do

close(unit=1)

call system("gnuplot plot_gnu.gnu")


end program rk4


subroutine sub_rk4(h,x,y,F)

real*8,intent(in) :: x,y,h
real*8,intent(inout) :: F

!F = h*((5.0*(x**2)-y)/exp(x+y))

F = h*((x+y)*sin(x*y))

end subroutine
