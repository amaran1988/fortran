program LAERK

implicit none

integer,parameter :: sc=1001,tc = 4001
real*8,dimension(1:tc,1:sc) :: u
real*8,parameter :: l=1000.0,t=1000.0,pi=4.0*atan(1.0),c=2.0
real*8,dimension(1:sc) :: k1,k2,k3,k4,x,ud
integer :: i,j
real*8 :: dx,dt

k1 = 0
k2 = 0
k3 = 0
k4 = 0

dx = l/(real(sc-1))
dt = t/(real(tc-1))

print*,"The cfl is",c*dt/dx

10 format(f30.10,5X,f30.10)

x(1:sc) = [((dx*(i-1)), i=1,sc)]
u(1,1:sc) = [(sin(2.0*pi*x(i)/l) , i=1,sc)]

do j=2,tc
     
     ud = u(j-1,:)
     
     call sub_rk4(k1,dt,dx,c,ud,sc)
     call sub_rk4(k2,dt,dx,c,ud+(k1/2.0),sc) 
     call sub_rk4(k3,dt,dx,c,ud+(k2/2.0),sc)
     call sub_rk4(k4,dt,dx,c,ud,sc)
     
     u(j,:) = u(j-1,:) + (1.0/6.0)*(k1+2.0*k2+2.0*k3+k4)
     
     print*,"u(j,1): ",u(j,1),"u(j-1,sc): ",u(j-1,sc)
     
     u(j,1) = u(j-1,sc)
  
end do



open(unit=1,file="data1.dat")
do i = 1,sc
  write(unit=1,fmt=10),x(i),u(1,i)
end do
close(unit=1)

open(unit=2,file="data2.dat")
do i = 1,sc
  write(unit=2,fmt=10),x(i),u(100,i)
end do
close(unit=2)

open(unit=3,file="data3.dat")
do i = 1,sc
  write(unit=3,fmt=10),x(i),u(500,i)
end do
close(unit=3)


open(unit=4,file="data4.dat")
do i = 1,sc
  write(unit=4,fmt=10),x(i),u(800,i)
end do
close(unit=4)


open(unit=5,file="data5.dat")
do i = 1,sc
  write(unit=5,fmt=10),x(i),u(1000,i)
end do
close(unit=5)




end program LAERK


subroutine sub_rk4(k,dt,dx,c,u,sh)

implicit none

integer,intent(in) :: sh
real*8,dimension(1:sh),intent(inout) :: k
real*8,intent(in) :: dx,dt,c
real*8,dimension(1:sh),intent(in) :: u
integer :: p

k(2:sh) = [((-1.0)*(c*dt/dx)*(u(p)-u(p-1)), p=2,sh)]


end subroutine 
