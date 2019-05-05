program tut6

implicit none

complex :: a,b,c,d

d = (3,4)

10 format("Enter the complex number",i5," :")
15 format("The complex number",i5," is: (",f14.5,",",f14.5,")")
20 format(2f14.5)

print 10,1
read 20,a
print 10,2
read 20,b

print*,"D = ",d
print 15,1,a
print 15,2,b

print*,"The sum of a and b is:",a+b
print*,"The difference between a and b is",a-b
print*,"The product of a and b is:",a*b
print*,"The division between a and b is",a/b

print*,"The real part of d is: ",real(d)
print*,"The imaginary part of d is: ",imag(d)
print*,"The conjugate of d is: ",conjg(d)
print*,"The absolute of d is:", abs(d)

print*,"The division of a and b by functions is:",a*conjg(b)/(b*conjg(b))

c = cmplx(5.7,6.8)

print*,"C = ",c

end program tut6
