
! Pure procedure does not allow print, write, read or save inside it



program pure_ex
 

 implicit none
 
 integer*8, parameter :: n=20
 integer*8 :: i
 integer*8,dimension(n) :: numfact, num
 integer*8,external :: fact_num

 
 
 
 num(1:n) = [(i, i=1,n)]
 
 numfact(1:n) = [(fact_num(num(i)), i=1,n)]
 
 
 !do i=1,n
 
    !print*,"The factorial of ",i,"is:",numfact(i)
 
 !end do
 

 
end program pure_ex



pure integer*8 function fact_num(num) result(fact)


implicit none
!integer :: a
integer*8 :: i
integer*8,intent(in) :: num
!integer, save :: counter = 0

!counter = counter+1

 !print*,"The num value is:",num
 !write(*,*),num
 !read*,a

fact = 1

do i = 1,num

   fact = fact*i

end do

 !print*,"The number of function calls is:",counter

end function fact_num
