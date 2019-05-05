! Select kind based on need

program pre

implicit none

integer,parameter :: single=selected_real_kind(p=4,r=37)
integer,parameter :: ddouble=selected_real_kind(p=8,r=50)
integer,parameter :: more=selected_real_kind(p=18)
integer,parameter :: extra=selected_real_kind(p=33,r=4000)

real(kind=single)  :: x_s, twos = 2., threes = 3.
real(kind=ddouble) :: x_d, twod = 2., threed = 3.
real(kind=more)    :: x_m, twom = 2., threem = 3.
real(kind=extra)   :: x_e, twoe = 2., threee = 3.

real(kind=4)       :: x_s2, two2s = 2., three2s = 3.
real(kind=8)       :: x_d2, two2d = 2., three2d = 3.
real(kind=10)      :: x_m2, two2m = 2., three2m = 3.
real(kind=16)      :: x_e2, two2e = 2., three2e = 3.
 
x_s = twos/threes
x_d = twod/threed
x_m = twom/threem
x_e = twoe/threee

x_s2 = two2s/three2s
x_d2 = two2d/three2d
x_m2 = two2m/three2m
x_e2 = two2e/three2e


10 format(a5,5X,'Kind =',i5,5X,'Precision =',i5,5X,'Range =',i5)

write(*,10),'x_s',kind(x_s),precision(x_s),range(x_s)
write(*,10),'x_d',kind(x_d),precision(x_d),range(x_d)
write(*,10),'x_m',kind(x_m),precision(x_m),range(x_m)
write(*,10),'x_e',kind(x_e),precision(x_e),range(x_e)
write(*,*)
write(*,*)

write(*,10),'x_s2',kind(x_s2),precision(x_s2),range(x_s2)
write(*,10),'x_d2',kind(x_d2),precision(x_d2),range(x_d2)
write(*,10),'x_m2',kind(x_m2),precision(x_m2),range(x_m2)
write(*,10),'x_e2',kind(x_e2),precision(x_e2),range(x_e2)
write(*,*)
write(*,*)


20 format(a10,1X,i2) 

write(*,20,advance='no'),'kind =', single
write(*,*), ' |   (2/3) = ', x_s
!write(*,*)
write(*,20,advance='no'),'kind =', ddouble
write(*,*), ' |   (2/3) = ', x_d
!write(*,*)
write(*,20,advance='no'),'kind =', more
write(*,*), ' |   (2/3) = ', x_m
!write(*,*)
write(*,20,advance='no'),'kind =', extra
write(*,*), ' |   (2/3) = ', x_e

write(*,*)
write(*,20,advance='no'),'kind =', 4
write(*,*), ' |   (2/3) = ', x_s2
!write(*,*)
write(*,20,advance='no'),'kind =', 8
write(*,*), ' |   (2/3) = ', x_d2
!write(*,*)
write(*,20,advance='no'),'kind =', 10
write(*,*), ' |   (2/3) = ', x_m2
!write(*,*)
write(*,20,advance='no'),'kind =', 16
write(*,*), ' |   (2/3) = ', x_e2

end program pre
