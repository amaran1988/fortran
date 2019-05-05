
module maths1

contains


subroutine print_mat2(a,n,m)

  implicit none
  integer, intent(in) :: n,m
  real*8, dimension(n,m),intent(in) :: a
  integer :: i,j 

  do i=1,n
      
      write(*,'("|")',advance='no')
    do j=1,m
    
       write(*,'(f8.3,t3)',advance='no'),a(i,j)
     
    end do
       write(*,'("|")')
  end do
  

end subroutine 



subroutine print_mat1(b,n)

  implicit none
  integer, intent(in) :: n
  real*8, dimension(n),intent(in) :: b
  integer :: i

  do i=1,n
      write(*,'("| ",f8.3," |")',advance='yes'),b(i)
  end do
  

end subroutine 


end module maths1



