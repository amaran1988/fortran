Program digit_sum

implicit none

integer :: n,temp,sum1,n2,c,count1,i


print*,"Enter a positive value"

read*,n

temp=n
sum1 = 0

do 

 if (temp == 0) then
    exit
 else 
   
   sum1 = sum1+mod(temp,10)
   temp = temp/10
   
  end if

end do

print*,"The number is",n
print*,"The sum of digits is",sum1

print*,"Enter a value between 1 to 10"

read*,n2

print*,"Enter",n2," positive values"

do i=1,n2

  read*,c
  
  if (c < 0) then
    cycle
  else
    count1 = count1+1
  end if
  

end do

print*,"dei bettermax thalaya...you have entered",count1,"positive values da"

end Program digit_sum
