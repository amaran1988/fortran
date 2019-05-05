 program tut11
 
 !---------------------------------------------------
 ! RULES FOR PURE FUNCTIONS OR PURE SUBROUTINES
 !---------------------------------------------------
 ! All optional/dummy arguments must be intent(in)
 ! All intent(in) variables must not be accidentally modified
 ! No save attribute inside the function/subroutine
 ! Subroutine/function should not handle global variables and save variables
 ! procedure = subroutines or functions
 ! This procedure should only call pure procedures
 ! No input/output operations inside procedures 
 
 implicit none
 
 integer,parameter :: n=20
 integer*8 :: i
 integer*8,dimension(n) :: num , num_facts
 integer*8, external :: fac_num
 
 num(1:n) = [(i, i=1,n)]
 
 num_facts(1:n) = [(fac_num(num(i)), i=1,n)]
 
 do i=1,n
 
   print*,"The factorial of",i,"is",num_facts(i)
   
 end do
 
 end program tut11
 
 

pure integer*8 function fac_num(num) result(fact)

  implicit none
  integer*8,intent(in)::num
  integer*8 :: j
  !save j
  
  !print*,"Num:",num
  !read*, num
  !write(*,*), num

  fact = 1

  do j=1,num
     fact = fact*j
  end do

  return

end function
