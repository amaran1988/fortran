
Program Fibn

implicit none

integer(kind=16),allocatable,dimension(:)::fib_vals,c_vals
integer,allocatable,dimension(:)::nvals
integer::i,n

print*,"Enter the value of n"
read *,n

allocate(fib_vals(n),c_vals(n),nvals(n))

fib_vals(1)=1
fib_vals(2)=1

do i=3,n
  
   fib_vals(i)=fib_vals(i-1)+fib_vals(i-2)

end do

open(unit=1,file="Fibn.txt")

15 format(i5,i25)

do i=1,n

   !print 10,i,fib_vals(i)
   !10 format("The Fibonacci value of",i3," is",2X,i10)
   !print*,"The Fibonacci value of",i," is",fib_vals(i)
   write(unit=1,fmt=15),i,fib_vals(i)
   
end do

close(unit=1)

open(unit=2,file="Fibn.txt")

do i=1,n

   read(unit=2,fmt=15),nvals(i),c_vals(i)

   print*,"i value check=",nvals(i)-i,"fib_vals check=",c_vals(i)-fib_vals(i)

end do

deallocate(fib_vals,c_vals,nvals)

close(unit=2)

end Program Fibn
