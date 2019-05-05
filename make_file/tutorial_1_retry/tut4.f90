program tut4

implicit none

integer ,parameter :: real_8_32 = selected_real_kind(p=32,r=32)
integer ,parameter :: int_10 = selected_int_kind(10)

real(kind=real_8_32) :: a = 2.5e10
double precision :: b = 2.5d0
integer(kind=int_10) :: val1 = 1000

print*,"Precision of a is:", precision(a)
print*,"The kind of a is:",kind(a)

print*,"The precision of b is:",precision(b)
print*,"The kind of b is:",kind(b)

print*,"The kind of val is:",kind(val1)


end program tut4
