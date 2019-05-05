! allocatable, read and write files, open close files. 


program fibo


implicit none

integer*8, allocatable, dimension(:) :: fibvals,nvals,cvals
integer*8 :: i,n

10 format(i3)
15 format(i3,2X,i25)

print*,"Enter the number of terms needed in the fibonacci series"
read 10,n

allocate(fibvals(n),nvals(n),cvals(n))

fibvals(1) = 1
fibvals(2) = 1


do i=3,n

 fibvals(i) = fibvals(i-2)+fibvals(i-1)

end do


open(unit=1,file="fibvals.txt")

do i=1,n

   print*,"The fibonacci value of ",i, " is ",fibvals(i)
   write(1,15),i,fibvals(i)

end do

close(unit=1)


open(unit=2,file="fibvals.txt")


do i=1,n

  read(2,15),nvals(i),cvals(i)
  print*,"The difference is =",cvals(i)-fibvals(i) 

end do


close(unit=2)

deallocate(fibvals)


end program fibo
