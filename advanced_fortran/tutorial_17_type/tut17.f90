module deri

implicit none
save

type prof
   integer :: id_no1 = 2
   character :: name1*20 = "ProfessorX"
end type prof

type stud
   integer :: id_no2 = 3
   character :: name2*20 = "Wolverine"
end type stud

end module




program typo

use deri

implicit none
integer :: i,j


!type stud
!   integer :: id_no2
!   character :: name2*20
!end type stud

character ::  prof_name1*20 = "Amardeep",  stud_name1*20 = "student1" 
character ::  prof_name2*20 = "Ajmeer",    stud_name2*20 = "student2"

!character ::  prof_name3*20 = "Bugeera",
!character :: stud_name3*20 = "student3"

integer :: prof_idno1 = 21, stud_idno1 = 31
integer :: prof_idno2 = 22, stud_idno2 = 32

!integer :: prof_idno3 = 23, 
!integer :: stud_idno3 = 33


type(stud),dimension(3) :: stud1
type(prof),dimension(3) :: prof2

prof2(1)%name1 =  prof_name1
prof2(1)%id_no1 = prof_idno1

prof2(2)%name1 = prof_name2
prof2(2)%id_no1 = prof_idno2

!prof2(3)%name1 = prof_name3
!prof2(3)%id_no1 = prof_idno3



stud1(1)%name2 = stud_name1
stud1(1)%id_no2 = stud_idno1

stud1(2)%name2 = stud_name2
stud1(2)%id_no2 = stud_idno2

!stud1(3)%name2 = stud_name3
!stud1(3)%id_no2 = stud_idno3


do j=1,3
  print*,"Professor ID:",prof2(j)%id_no1,", Name:",prof2(j)%name1
end do


do i=1,3
  print*,"Student ID:",stud1(i)%id_no2,", Name:",stud1(i)%name2
end do


!call deri_print(prof2,stud1)

end program typo



subroutine deri_print(p1,p2)

use deri
implicit none

type(prof),dimension(3),intent(in) :: p1
type(stud),dimension(3),intent(in) :: p2
integer :: i,j


do i=1,3
  print*,"Student ID:",p2(i)%id_no2,", Name:",p2(i)%name2
end do


do j=1,3
  print*,"Professor ID:",p1(j)%id_no1,", Name:",p1(j)%name1
end do


end subroutine
