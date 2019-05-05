program nmlist

implicit none

character :: name1*10 = "Amaran"
real*8 :: avg
integer,dimension(5) :: percents = (/95,97,92,86,95/)
integer :: rank1 = 4, class1 = 1,vals

namelist /dat/ name1,class1,rank1,percents,avg,vals

vals = percents(2)

avg = sum(percents)/5

print*,"The details are:"

write(*,nml=dat)

end program nmlist
