

program tri_area

implicit none ! needed for user-control over variables

real*8 :: a, b, c, s, perimeter, area
integer :: d,e
real :: f,g
real,parameter :: pi = 4*atan(1)

!real :: v
!double :: cd
!complex :: a
!character :: jk
!logical :: ko


print*,'Enter the sides of the triangle'
read*,a,b,c

!a = 3
!b = 4
!c = 5

d = 5
e = int(6.7) ! Explicit typecasting
f = 3
g = 4.5

perimeter = a+b+c

s = perimeter/2

area = (s*(s-a)*(s-b)*(s-c))**0.5

print*,'The sides of the triangle are A = ',a,'B = ',b,'C = ',c
print*,'The perimeter of the triangle is ', perimeter
print*,'The area of the triangle is ', Area ! Case insensitivity
print*,'d',d,'e',e 
print*,'f',f,'g',g


end program tri_area
