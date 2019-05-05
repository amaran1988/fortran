program area_qt

implicit none

real*8 :: a,b,c,s,l,w
real*8 :: area
character :: fig
real*8,external::tri,sq



print*,"Find the area of square(s) or triangle(t) or rectangle(r)?"

read*,fig

if (fig=="t" .or. fig=="T") then

  print*,"Enter the sides of the triangle"
  
  read*,a,b,c
  
  area = tri(a,b,c)
  
  print*,"The area of the triangle is",area
  
else if(fig=="s" .or. fig=="S") then

  print*,"Enter the side of the square"
  
  read*,s
  
  area = sq(s)
  
  print*,"The area of the square is", area
  
else if(fig=="r" .or. fig=="R") then

  print*,"Enter the sides of the rectangle"
  
  read*,l,w
  
  area = rect(l,w)
  
  print*,"The area of the rectangle is", area

else

  print*,"Invalid input. Terminating process"
  
end if

  contains
  
  real*8 function rect(l,w)
  
  real*8,intent(in)::l,w
  
  rect = l*w
  
  end function rect
  

end program area_qt


real*8 function tri(a,b,c)

implicit none

real*8::s1
real*8,intent(in):: a,b,c

s1 = (a+b+c)/3.0

tri = (s1*(s1-a)*(s1-b)*(s1-c))**0.5

end function tri


