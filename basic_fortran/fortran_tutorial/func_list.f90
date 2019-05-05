
recursive integer*8 function fact(n) result(fact1)

implicit none

integer,intent(in)::n
!integer*8 :: fact1

if (n==0 .or. n==1) then

   fact1 = 1
   
else

   fact1 = fact(n-1)
   fact1 = fact1*n
   
end if

end function fact



integer*8 function per(n,r)

implicit none

integer,intent(in)::n,r
integer*8,external :: fact

per = fact(n)/fact(n-r)


end function per




integer*8 function com(n,r)

implicit none

integer,intent(in)::n,r
integer*8,external :: fact


com = fact(n)/(fact(n-r)*fact(r))


end function com


integer*8 function comm(per,r)

implicit none


integer,intent(in)::r,per
integer*8,external::fact

comm = per/fact(r)


end function comm

