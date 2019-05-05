module fact1


contains


function fact_num(num,n) 

   implicit none
     integer*8,intent(in) :: n
    integer*8,dimension(n),intent(in) :: num
    integer*8 :: fact,i,j
    integer*8, dimension(n) :: fact_num
 
    do i=1,n

        fact = 1
   
        do j=1,num(i)
  
            fact = j*fact
     
        end do
  
        fact_num(i) = fact
   
    end do



end function fact_num







end module fact1
