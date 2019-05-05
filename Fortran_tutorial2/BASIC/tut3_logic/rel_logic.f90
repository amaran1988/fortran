
! logical relationships - not, or, and, eqv, neqv
! conditional args - .lt. .gt. .ne. ==

program rel

implicit none

integer :: a,b
logical :: m,n

a = 3
b = 5
m = .true.
n = .false.

print*,'a>b? ',a.gt.b
print*,'a<b? ',a.lt.b
print*,'a=b? ',a==b
print*,'a/=b?', a.ne.b

print*,'not m? ', .not.m
print*,'m and n? ', m.and.n
print*,'m or n? ', m.or.n
print*,'m = n?', m.eqv.n
print*,'m /= n', m.neqv.n

! > .gt.
! < .lt.
! >= .ge.
! <= .le. 
! /= .ne.
! 
! .true. or .false.
! .not.(exp1) 
! (exp1) .and. (exp2)
! (exp1) .or. (exp2)
! (exp1) .eqv. (exp2)
! (exp1) .neqv. (exp2)
!
!
!



end program rel
