! formatting options

program check_format

implicit none

integer :: a
real :: ar,br
character*10 :: ac



read '(i6,f8.3,e12.5)', a,ar,br

read '(A10)',ac


10 format('With format',i5,4X,f6.2,4X,e13.6)

print 10, a, ar, br

print '("With format",i5,4X,f6.2,4X,e13.6)',a,ar,br

print '(A10)',ac





end program check_format
