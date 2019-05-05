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




program pointers
  
 use points
 implicit none
 
 integer, target :: x1=15,x2=20,x3=30
 integer :: x4 = 100
 integer, pointer :: p1,p2,p3,p4
 integer, dimension(10,10,10),target :: r1
 integer, dimension(:,:,:),pointer :: pt_r1
 
 p1 => x1
 p2 => x2 
 p3 => x3 
 !p4 => x4
 p4 => p3
 
 r1 = 8
 pt_r1 => r1

 print*,"Associated p1 ?",associated(p1)
 print*,"Associated p2 ?",associated(p2) 
 print*,"Associated p3 ?",associated(p3)
 print*,"Associated p4 ?",associated(p4)
 
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

print*,"Association of p1 & x1",associated(p1,x1)
print*,"Association of p2 & x1",associated(p2,x1)
print*,"Association of p1 & x2",associated(p1,x2)
print*,"Association of p2 & x2",associated(p2,x2)
print*,"Association of pt_r1 & r1",associated(pt_r1,r1)


end program pointers
