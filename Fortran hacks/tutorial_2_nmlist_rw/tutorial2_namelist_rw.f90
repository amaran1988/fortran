! Using namelists to read and write data is very efficient
! if using namelist_read.txt use the execute.sh shell script or 
! if using the namelist_sample use the execute2.sh shell script

program nmrw

!character(len=80) :: nm_r = "namelist_read.txt"
character(len=80) :: nm_r = "namelist_sample"
character(len=80) :: nm_w = "namelist_write.txt"

integer :: year,age
character(len=20) :: month,day,my_name,eye_color
logical :: student
real*8 :: pizza_cost
real*8,dimension(10) :: test_score
complex :: rpi

! namelist definition

namelist /list1/   &
&      year,       &
&      month,      &
&      age,        &
&      pizza_cost, &
&      student,    &
&      test_score, &
&      my_name,    &
&      rpi,        &
&      day,        &
&      eye_color 

! reading data from a file

open(unit=10,file=nm_r,form='formatted',status='old')

read(10,nml = list1)

close(10)


print*,"Year:",Year
print*,"Month:",month
print*,"Age:",age
print*,"Cost of Pizza:",pizza_cost
print*,"Is he a student?",student
print*,"Test score:",test_score
print*,"My name:",my_name
print*,"RPI:",rpi
print*,"Day:",day
print*,"Eye color:",eye_color


open(unit=20,file=nm_w,form='formatted',status='replace')

write(20,nml = list1)

close(20)


end program nmrw
