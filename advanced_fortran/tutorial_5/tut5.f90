
program tut5

use maths1
implicit none

integer,parameter :: r=2,c=3
integer :: values(1:8),k
real*8,dimension(r,c) :: randmat1,randmat2
logical,dimension(r,c) :: p_n
integer,dimension(:),allocatable::seed

call date_and_time(values=values)

!----------------------
!Returns the following:
!----------------------
! VALUE(1) :  year
! VALUE(2) :  month
! VALUE(3) :  date
! VALUE(4) :  UTC difference
! VALUE(5) :  hours 
! VALUE(6) :  minutes
! VALUE(7) :  seconds
! VALUE(8) :  milliseconds


call random_seed(size=k)

print*,"k = ",k

allocate(seed(1:k))

seed(:) = values(8)

print*,"Seed: ",seed

call random_seed(put=seed)

call random_number(randmat1)

print*,"The date and time is:"
call printmat1(values,8)

print*,"The Random matrix 1 is:"
call printmat2(randmat1,r,c)

call random_number(randmat2) 
print*,"The Random matrix 2:"
call printmat2(randmat2,r,c)

where (randmat1 < 0.5)

   randmat2 = -randmat2

end where


where (randmat2 > 0)
 p_n = .true.
elsewhere 
  p_n = .false.
end where

print*,"The Random matrix 2:"
call printmat2(randmat2,r,c)

print*,"The logical matrix is:"
call printmatl2(p_n,r,c)

deallocate(seed)

end program tut5
