program per_com

use amar

implicit none

integer :: n,r
integer,external::per,com,comm
integer :: per1,com1,com2


print*,"Enter the value of n and r"

read*,n,r

per1 = per(n,r)

com1 = com(n,r)

com2 = comm(per1,r)

print*,"The permutation is",per1
print*,"The combination is",com1
print*,"The trial combination is",com2



end program per_com
