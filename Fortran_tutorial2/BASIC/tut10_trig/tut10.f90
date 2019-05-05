! trig examples, overall divisions and multiplications without do loop


program trig

implicit none

integer,parameter :: n=100
real*8,dimension(n) ::x,sinx,cosx,tanx,cosecx,secx,cotx,sin2x,cos2x,tan2x,sec2x,cosec2x,cot2x
real,parameter :: pi = 2.0*sin(1.0)
real :: increment
integer :: i


increment = 2.0*pi/n

!do i=0,n
!
!  x(i) = increment*i
!
!end do


x(0:n) = [(increment*i,i=0,n)]


sinx = sin(x)
cosx = cos(x)
tanx = sinx/cosx
cosecx = 1.0/sinx
secx = 1.0/cosx
cotx = 1.0/tanx
sin2x = sinx**2
cos2x = cosx**2
tan2x = tanx**2
sec2x = secx**2
cosec2x = cosecx**2
cot2x = cotx**2


open(unit=1,file="sinx.txt")




close(unit=1)


do i=1,n

 ! print*,"Sinx**2 + cosx**2 = ", sin2x(i)+cos2x(i)
 ! print*,"tanx**2 - secx**2 = ", tan2x(i)-sec2x(i)
 ! print*,"Cosecx**2 - cotx**2 = ", cosec2x(i)-cot2x(i)

end do

end program trig
