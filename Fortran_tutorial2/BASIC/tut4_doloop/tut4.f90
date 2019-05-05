! kind integer

program doloop

implicit none

integer(kind=16) :: i,a,r,n

print*,'Enter the value of a and r'
read*,a,r

print*,'Enter the number of terms?'
read*,n


do i=0,n

 print*,'the value of ',i,'in the series is ',a*(r**i)

end do




end program doloop
