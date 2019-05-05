! definition of mod versus division

program yada

implicit none

real*8 :: a,b,c,d 

character*10,dimension(3) :: str1 

print*,'Enter the value of a and b'
read*,a,b

c = a/b
d = mod(a,b)

print*,'Value of a and b is',a,b
print*,'Division of a and b is',c
print*,'mod of a and b', d

str1(1) = 'Amar'
str1(2) = 'ever'
str1(3) = 'eternal'

print*,'We know the meaning of', str1(1),'is equivalent to ',str1(2),'and',str1(3)



end program yada
