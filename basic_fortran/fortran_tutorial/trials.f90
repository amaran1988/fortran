
program trials

implicit none

logical,dimension(3,3,3) :: ch
integer :: i,j

ch = .true.

do i=1,3
   do j = 1,3
      print*,ch(i,j,3)
   end do
    print*,new_line("A")
end do


end program trials
