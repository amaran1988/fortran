
Program Quadrant

implicit none

real x,y,l,a,m

real,parameter :: pi = 4.0*atan(1.0) 

character q

print *,"Enter the values of x and y"

read *,x,y

l = sqrt(x**2+y**2)

a = (atan(y/x)*180.0/pi)

m = mod(y,x)

print *,"the modulus of and x and y is:",m

print *,"The length of the hypotenuse is:",l

print *,"The angle is: ",a

if (x >= 0 .and. y >= 0) then
  q = "1"
else if (x<=0 .and. y>=0) then
  q = "2"
else if (x<=0 .and. y<=0) then
  q = "3"
else 
  q = "4"
end if
	
print *,'The point is in quadrant: ',q
print *,'Program ran successfully'


end Program Quadrant
