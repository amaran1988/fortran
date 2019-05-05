module points

implicit none

type s_lin_list

   character :: var
   type(s_lin_list),pointer::pt

end type


type d_lin_list
   character :: var
   type(d_lin_list),pointer :: left,right 

end type

end module points




program point

use points
implicit none


integer,target :: x1=10,x2=25
integer,target :: x3
integer :: x4=100
integer,pointer :: p1,p2,p3,p4
real,dimension(10,10,10),target :: r1=8.0
real,dimension(:,:,:),pointer :: pt_r1

p1 => x1
p2 => x2
p3 => x3
p4 => x3

pt_r1 => r1

p4 = 5
print*,"x3:",x3
print*,"p3:",p3
print*,"p4:",p4
p3 = 255


print*,"x1:",x1
print*,"p1:",p1
print*,"x2:",x2
print*,"p2:",p2
print*,"x3:",x3
print*,"p3:",p3
print*,"x4:",x4
print*,"p4:",p4

print*,"r1(1,2,7):",r1(1,2,7)
print*,"pt_r1(1,2,7)",pt_r1(1,2,7)

write(*,*)

print*,"Associated p1",associated(p1)
!print*,"Associated x1",associated(x1) does not work
print*,"Associated p2",associated(p2)
print*,"Associated p3",associated(p3)
print*,"Associated p4",associated(p4)
print*,"Associated p4",associated(pt_r1)

write(*,*)

print*,"Association of p1 & x1",associated(p1,x1)
print*,"Association of p2 & x1",associated(p2,x1)
print*,"Association of p1 & x2",associated(p1,x2)
print*,"Association of p2 & x2",associated(p2,x2)
print*,"Association of pt_r1 & r1",associated(pt_r1,r1)

print*,"------------------------------------------------"

print*,"After Nullification"

print*,"------------------------------------------------"

nullify(p2)
nullify(pt_r1)

print*,"x1:",x1
print*,"p1:",p1
print*,"x2:",x2
print*,"p2:",p2
print*,"r1(1,2,7):",r1(1,2,7)
!print*,"pt_r1(1,2,7)",pt_r1(1,2,7)

print*,"Associated p1",associated(p1)
print*,"Associated p2",associated(p2)
print*,"Associated p4",associated(pt_r1)

write(*,*)

print*,"Association of p1 & x1",associated(p1,x1)
print*,"Association of p2 & x1",associated(p2,x1)
print*,"Association of p1 & x2",associated(p1,x2)
print*,"Association of p2 & x2",associated(p2,x2)
print*,"Association of pt_r1 & r1",associated(pt_r1,r1)


end program point
