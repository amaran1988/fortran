
program inter_func

use inter2
implicit none

integer,parameter :: n=6
integer :: aa0=1, ar=4, aan
real :: ga0=1.0, gr=4.0, gan
integer :: sia = 1, sib = 4
real :: sra = 1.0, srb = 4.0

aan = geo_term(aa0,ar,n)
gan = geo_term(ga0,gr,n)

print*,"--------------------"

print*,"n:",n
print*,"aa0",aa0
print*,"ar:",ar
print*,"aan:",aan

print*,"ga0:",ga0
print*,"gr:",gr
print*,"gan:",gan

print*,"--------------------"

print*,"Integer Swap:"

print*,"Before swap:"
print*,"sia:",sia
print*,"sib:",sib

call swap(sia,sib)

print*,"After swap:"
print*,"sia:",sia
print*,"sib:",sib

print*,"--------------------"

print*,"Real/Float Swap:"

print*,"Before swap:"
print*,"sra:",sra
print*,"srb:",srb

call swap(sra,srb)

print*,"After swap:"
print*,"sra:",sra
print*,"srb:",srb


end program inter_func
