! functions outside and inside (contains) the main program
program func

  implicit none

character*5 :: fig
real*8 :: a,b,c,s,l,w
real*8 :: area
real*8,external :: tri,sq


print*,"Program to calculate the area of square or triangle"
print*,"Click S for square , T for triangle or R for rectangle"
read*,fig

if (fig == 't' .or. fig=='T') then

  print*,"Enter the sides of the triangle"
  read*,a,b,c
  
  area = tri(a,b,c)
  print*,"The area is ", area

else if (fig == 's' .or. fig=='S') then

  print*,"Enter the side of the square"
  read*,s

  area = sq(s)
  print*,"The area is ", area
  
  else if (fig == 'r' .or. fig=='R') then

  print*,"Enter the side of the rectangle"
  read*,l,w

  area = rect(l,w)
  print*,"The area is ", area
  
else 

  print*,"Invalid input"

end if




  contains
     
      real*8 function rect(l,w)
      
      implicit none
      real*8,intent(in) :: l,w
      
      rect = l*w     
      
      
      end function rect
   


end program func



real*8 function tri(a,b,c)


   implicit none

   real*8,intent(in) :: a,b,c
   real*8 :: s
 
 
    s = (a+b+c)/2
    tri = (s*(s-a)*(s-b)*(s-c))**0.5


end function
