! Exit and Cycle commands in Do loop


program ccy

implicit none

integer :: a,count1,i,temp,dff,temp2,sum1


print*,"Enter the number for sum of digits"
read*,dff

temp2 = dff
sum1 = 0

do 

 if (temp2==0) then
   exit
 else 
   sum1 = sum1+mod(temp2,10)
   temp2 = temp2/10
   print*,"Temp2 = ", temp2
   print*,"sum1 = ", sum1
 end if

end do


print*,"Enter the number of positive integers"
read*,a

count1 = 0

do i=1,a
  print*,"Enter the ",i,"st term"
   read*,temp

   if (temp<0) then
     cycle
   else
    count1 = count1 + 1
   end if

end do

print*,"The number of positive integers you entered was ", count1


end program ccy
