
Program trig

implicit none

integer::i

integer,parameter::n=100

real, parameter :: pi=2.0*asin(1.0)

real(kind=4),dimension(0:n)::x,sinx,cosx,tanx,cosecx,secx,cotx,sin2x

real::increment

increment = (pi*2)/real(n)

!do i=0,n

! x(i) = increment*i

!end do

x(0:n) = [(increment*i,i=0,n)]

sinx = sin(x)
cosx = cos(x)
tanx = sinx/cosx
cosecx = 1.0/sinx
secx = 1.0/cosx
cotx = 1.0/tanx

sin2x = sinx**2

open(unit=1,file="sinx.txt")

10 format(f10.4,5X,f10.4,5X,f10.4)

do i = 0,n

   print *,"The Sin value of",x(i)*180.0/pi,"degrees is",sinx(i)
   
   write(unit=1,fmt=10),x(i)*180.0/pi,sinx(i),sin2x(i)

end do

close(unit=1)

end Program trig
