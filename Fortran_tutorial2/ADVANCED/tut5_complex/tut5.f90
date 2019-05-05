
! All you need to know about complex numbers

program complicated

implicit none

complex :: a,b,d

d = (3,4)

10 format('Enter the complex number',i3,':')
15 format('The Complex number',i3,'is: ',f14.5,'+',f14.5,'i')
20 format(2f14.5)


print 10, 1
read  20, a
print 10, 1
read  20, b


print 15,1,a
print 15,1,b


print*,"Sum of a and b is:", a+b
print*,"Difference of a and b is:", a-b
print*,"Multiplying a and b gives: ",a*b
print*,"Division of a and b gives:",a/b
print*,"Division of a and b with functions is:",(a*conjg(b))/(b*conjg(b))



print*,"D is:",d
print*,"Real of d is",real(d)
print*,"Imaginary of d is",imag(d)
print*,"The conjugate of d is",conjg(d)
print*,"The absolute of d is",abs(d)




end program complicated


