! IF LOOPING , INteger parameter

program quadrant

implicit none

real::x,y,l,a
real,parameter :: pi = 4.0*atan(1.0)

print*,'Enter the coordinates x and y'
read*,x,y


l = (x**2+y**2)**0.5
a = atan(y/x)*180.0/pi

print*,'pi = ',pi
print*,'The length of the quadrant is ',l
print*,'The angle of the quadrant is',a,' degrees'

if (x>=0 .and. y>=0) then

print*,'The coordinates are in the first quadrant'

else if (x<=0 .and. y>=0) then

print*,'The coordinates are in the second quadrant'

else if (x<=0 .and. y<=0) then

print*,'The coordinates are in the third quadrant'

else

print*,'The coordinates are in the fourth quadrant'

end if  

end program quadrant
