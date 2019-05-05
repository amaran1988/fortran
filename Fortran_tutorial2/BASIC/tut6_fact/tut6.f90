! DO LOOP LABEL


program fact_trial

implicit none

integer*8 :: n,i,fact

print*,'Enter the number for its factorial'
read*,n

fact = 1

outer_do_loop: do i = 1,n ! labelling for do loops 

 fact = fact*i
 
 print*,'The factorial of',i,'is ',fact

end do outer_do_loop




end program fact_trial
