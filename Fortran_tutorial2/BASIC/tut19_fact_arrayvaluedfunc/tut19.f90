

program fact_all

use fact1

implicit none

integer*8,parameter :: n=20
integer*8,dimension(n) :: num,num_all
!integer*8,external :: fact_num
integer*8 :: i


num(1:n) = [(i, i=1,n)]

num_all = fact_num(num,n)

do i=1,n
   print*,"The factorial of ",i,"is ",num_all(i)
end do

end program fact_all


