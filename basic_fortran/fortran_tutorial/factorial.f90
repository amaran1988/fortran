

Program Fact

integer(kind=8) :: i,n,f


print *,"Enter the value to factorise"

read *,i

f = i

outer_do_loop: do n=1,i-1

  print*,"The value is",f,"*(",i,"-",n,")"

  f = f*(i-n)
  
end do outer_do_loop

print *,"The final factorised value of",i,"is",f


end Program Fact
