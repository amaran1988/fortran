Program kind_ex

implicit none

integer(kind=16) :: a,r,i,n

character, dimension(2) :: u*6 !stores 6 characters in a 2 dimensional array


print *,"Enter values of a and r"



read *,a,r

print *,"Enter how many terms"

read *,i

do n = 0,i

  print *,"For",n,"the value is ",a*(r**n)

end do

u(1) = 'Amaran'
u(2) = 'Amar n'

print *,"the first string is: ",u(1),"\nthe second string is",u(2)


end Program kind_ex
