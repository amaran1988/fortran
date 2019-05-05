
program RK

implicit none

integer, parameter :: tp = 4001, sp = 1001
real*8, dimension(1:tp,1:sp) :: u = 0
real*8, dimension(1:sp) :: x,k1,k2,k3,k4,ud
real*8, parameter :: c=2.0, l=1000, t=1000, pi=4.0*atan(1.0) 
real*8 :: dx,dt,cfl
integer :: i

dx = l/real(sp-1)
dt = t/real(tp-1)

cfl = c*dt/dx


x(1:sp) = [(dx*(i-1), i=1,sp)]
u(1,1:sp) = [(sin(2*pi*x(i)/l), i=1,sp)]

k1 = 0
k2 = 0
k3 = 0
k4 = 0

10 format(f25.3,5x,f25.3)

do i = 2,tp

    ud = u(i-1,:)
    
     call sub_rk4(k1,dt,dx,c,ud,sp)
     call sub_rk4(k2,dt,dx,c,ud+(k1/2.0),sp) 
     call sub_rk4(k3,dt,dx,c,ud+(k2/2.0),sp)
     call sub_rk4(k4,dt,dx,c,ud,sp)

    u(i,:) = ud+(k1+2.0*k2+2.0*k3+k4)/6.0
    u(i,1) = u(i-1,sp)
   
end do


open(unit=1,file="data1.dat")
do i = 1,sp
  write(unit=1,fmt=10),x(i),u(1,i)
end do
close(unit=1)

open(unit=2,file="data2.dat")
do i = 1,sp
  write(unit=2,fmt=10),x(i),u(100,i)
end do
close(unit=2)

open(unit=3,file="data3.dat")
do i = 1,sp
  write(unit=3,fmt=10),x(i),u(500,i)
end do
close(unit=3)


open(unit=4,file="data4.dat")
do i = 1,sp
  write(unit=4,fmt=10),x(i),u(800,i)
end do
close(unit=4)


open(unit=5,file="data5.dat")
do i = 1,sp
  write(unit=5,fmt=10),x(i),u(1000,i)
end do
close(unit=5)



end program RK


subroutine sub_rk4(k,dt,dx,c,u,sh)

implicit none

integer,intent(in) :: sh
real*8,dimension(1:sh),intent(inout) :: k
real*8,intent(in) :: dx,dt,c
real*8,dimension(1:sh),intent(in) :: u
integer :: p

k(2:sh) = [((-1.0)*(c*dt/dx)*(u(p)-u(p-1)), p=2,sh)]


end subroutine 
