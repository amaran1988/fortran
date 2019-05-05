! recursive function and functions calling other functions

program samosa


implicit none

real*8, external :: per,com,comm,commm,fact
real*8 :: per1,com1,comm1,com3
integer*8 :: n,r

print*,"Enter the value of n and r"
read*,n,r


per1 = per(n,r)
com1 = com(per1,r)
comm1 = comm(n,r)
com3 = commm(n,r)

print*,"The permutation is ", per1
print*,"The combination is ", com1
print*,"The combination 2 is", comm1
print*,"The combination 3 is", com3




end program samosa




recursive real*8 function fact(n) result(fact1)
    implicit none
    integer*8,intent(in) :: n

    if (n==1 .or. n==0) then
          fact1 = 1
    else
          fact1 = fact(n-1)*n
          return
    end if
end function fact


real*8 function per(n,r)

  implicit none

  integer*8,intent(in) :: n,r
  real*8,external :: fact

  per = fact(n)/fact(n-r)

end function per





real*8 function com(p,r)

implicit none
integer*8,intent(in) :: r
real*8,intent(in) :: p
real*8,external :: fact

com = p/fact(r)


end function com





real*8 function comm(n,r)


implicit none

integer*8,intent(in) :: n,r
real*8,external :: fact


comm = fact(n)/(fact(n-r)*fact(r))


end function comm





real*8 function commm(n,r) 


implicit none

integer*8,intent(in) :: n,r
real*8,external :: fact,per


commm = per(n,r)/fact(r)


end function commm
