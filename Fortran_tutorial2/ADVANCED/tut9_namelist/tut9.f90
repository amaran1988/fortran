
! namelist can only be written with the write function and not print

program list

implicit none

character*12 :: name1 = 'Amardeep'
real*8, dimension(5) :: mark=(/85,75,97,86,99/)
integer :: class1=1, rank1=1
real*8 :: avg,val1

namelist /dat1/ name1,mark,class1,rank1,avg
namelist /dat2/name1,val1,class1,rank1,avg

val1 = mark(5)
avg = sum(mark)/5.0

print*,"The namelist is:"
write(*,nml = dat1)

end program list
