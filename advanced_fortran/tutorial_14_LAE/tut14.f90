
module global

implicit none
save

integer,parameter :: rmax = 1000,cmax=1000
real*8,dimension(0:rmax,0:cmax) :: u=0
real*8,dimension(0:rmax) :: x

end module


program LAE

use global
implicit none
real*8,parameter :: pi = 4.0*atan(1.0)
real*8 :: dt=1.0,dx=4.0,a=2.0,l=1000,t=1000,cfl,t1
integer*8 :: sp,tp,ts,ss

sp = int(l/dx)
tp = int(t/dt)

cfl = a*dt/dx 

x(0:sp) = [(ss*dx,ss=0,sp)]
u(0,0:sp) = [(sin(ss*2.0*pi*dx/l),ss=0,sp)]

10 format(f30.10,5X,f30.10)

do ts=1,tp
  t1 = u(ts-1,sp)
  do ss=1,sp
    u(ts,ss) = (1.0-cfl)*u(ts-1,ss)+cfl*u(ts-1,ss-1)
  end do
  u(ts,0) = t1
  print*,u(ts-1,sp),u(ts,0)
end do 

open(unit=1,file="data1.txt")
do ss = 0,sp
   write(1,10),x(ss),u(0,ss)
end do
close(unit=1)


open(unit=2,file="data2.txt")
do ss = 0,sp
   write(2,10),x(ss),u(200,ss)
end do
close(unit=2)

open(unit=3,file="data3.txt")
do ss = 0,sp
   write(3,10),x(ss),u(400,ss)
end do
close(unit=3)

open(unit=4,file="data4.txt")
do ss = 0,sp
   write(4,10),x(ss),u(500,ss)
end do
close(unit=4)

open(unit=5,file="data5.txt")
do ss = 0,sp
   write(5,10),x(ss),u(600,ss)
end do
close(unit=5)

open(unit=6,file="data6.txt")
do ss = 0,sp
   write(6,10),x(ss),u(800,ss)
end do
close(unit=6)

open(unit=7,file="data7.txt")
do ss = 0,sp
   write(7,10),x(ss),u(950,ss)
end do
close(unit=7)


end program LAE
