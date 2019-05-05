integer function geo_real(a0,r,n) result(an)

  implicit none
  integer,intent(in) :: a0,r,n

  an = a0*r**n

  return

end function geo_real



real function geo_int(a0,r,n) result(an)

  implicit none
  integer,intent(in) :: n
  real,intent(in) :: a0,r

  an = a0*r**n
  
  return

end function geo_int


subroutine swap_int(a,b)

implicit none

integer,intent(inout) :: a,b
integer :: c

c = a
a = b
b = c

end subroutine swap_int



subroutine swap_real(a,b)

implicit none

real,intent(inout) :: a,b
real :: c

c = a
a = b
b = c

end subroutine swap_real



program inter_func

implicit none

integer,parameter :: n=6
integer :: aa0=1, ar=4, aan
real :: ga0=1.0, gr=4.0, gan
integer :: sia = 1, sib = 4
real :: sra = 1.0, srb = 4.0

interface geo_term

   integer function geo_real(a0,r,n) result(an)

       implicit none
       integer,intent(in) :: a0,r,n
       
   end function geo_real
   
       
   real function geo_int(a0,r,n) result(an)

       implicit none
       integer,intent(in) :: n
       real,intent(in) :: a0,r
       
   end function geo_int


end interface geo_term   


interface swap

   subroutine swap_int(a,b)

       implicit none
       integer,intent(inout) :: a,b
       integer :: c

   end subroutine swap_int

   subroutine swap_real(a,b)

       implicit none

       real,intent(inout) :: a,b
       real :: c

   end subroutine swap_real
   
end interface swap



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
