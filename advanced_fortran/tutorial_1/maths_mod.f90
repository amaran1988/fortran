
module maths1


contains



subroutine printmat2(c,n,m)

implicit none

integer,intent(in) :: n,m
real*8,dimension(n,m),intent(in) :: c
integer :: i,j

do i = 1,n
  write(*,'("|")',advance='no')
  do j = 1,m
    write(*,'(f8.3,t5)',advance='no'),c(i,j)
  end do
  write(*,'("|")',advance='yes')
end do


end subroutine



subroutine printmat1(b,n)

integer,intent(in) :: n
real*8,dimension(n),intent(in) :: b
integer :: i

do i=1,n

   write(*,'("|",f8.3," |")',advance='yes'),b(i)
  
end do

end subroutine




end module
