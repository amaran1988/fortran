
! Interfacing functions very much used to deal with values of different
! datatypes. The same goes for subroutines 
! The interfacing must be continuous to each other and not with some
! program between them - reason I dunno but throws an error

module inters

implicit none

interface swap

    module procedure swap_real
    module procedure swap_int
    
end interface swap

interface geo_term
 
   module procedure geo_term_real
   module procedure geo_term_int
 
end interface geo_term



contains

real function geo_term_real(a0,r,n) result(an)

implicit none
real,intent(in) :: a0,r
integer, intent(in) :: n
 an = a0*r**n

end function


integer function geo_term_int(a0int,rint,n) result(an)

 implicit none
 integer, intent(in) :: a0int, rint,n
 an = a0int*rint**n

end function


subroutine swap_real(a,b)

implicit none
real, intent(inout) :: a,b
real :: c

c = a
a = b
b = c

end subroutine

subroutine swap_int(a,b)

implicit none
integer, intent(inout) :: a,b
integer :: c

c = a
a = b
b = c

end subroutine

end module inters



!module inters2

!use inters
!implicit none

!interface swap

!    module procedure swap_real
!    module procedure swap_int
    
!end interface swap

!interface geo_term
 
!   module procedure geo_term_real
!   module procedure geo_term_int
 
!end interface geo_term


!end module inters2



program interface_ex

 use inters
 implicit none
 
 
 
 real :: aa0 = 1.0, real_r = 4.0, aan, sra = 55.5, srb = 89.5
 integer :: ga0 = 1, int_r = 4, n = 6, gan, sia = 55, sib = 87



aan = geo_term(aa0,real_r,n)
gan = geo_term(ga0,int_r,n)


print*,"n =",n
write(*,*)
print*,"aa0 =",aa0
print*,"real_r =",real_r
print*,"aan =",aan
write(*,*)
print*,"ga0 =",ga0
print*,"int_r",int_r
print*,"gan =",gan
write(*,*)
print*,"Before Swapping:"
print*,"Sia = ",sia
print*,"Sib = ",sib

call swap(sia,sib)

print*,"After Swapping:"
print*,"Sia = ",sia
print*,"Sib = ",sib

write(*,*)
print*,"Before Swapping:"
print*,"Sra = ",sra
print*,"Srb = ",srb

call swap(sra,srb)

print*,"After Swapping:"
print*,"Sra = ",sra
print*,"Srb = ",srb


end program interface_ex
