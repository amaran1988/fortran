
program DAF

implicit none

integer,parameter :: g=2,u=10
integer :: roll,grades(g),i,j,ios,ne,rno
character :: stud_name*45

open(unit=u,file="stud_rec.txt",status="replace", &
iostat=ios,recl=43,access="direct",form="formatted")

if (ios /= 0) then
   print*,"File cannot be opened"
   stop
end if


print*,"Enter the no of entries:"
read*, ne

15 format(i5,3X,A45,3X,2i5)

do i=1,ne

   print*,"Enter the roll no for student",i
   read*,roll
   
   print*,"Enter the name of student",i
   read*,stud_name
   
   print*,"Enter the grades for student",i
   
   do j=1,g
     read*,grades(g)
   end do

   write(unit=u,fmt=15,rec=roll),roll,stud_name,grades

end do


close(unit=u)


rno = 20

open(unit=u,file="stud_rec.txt",status="old", &
iostat=ios,recl=43,access="direct",form="formatted")

read(unit=u,fmt=15,rec=rno),roll,stud_name,grades

if (rno==roll) then

  print*,"Roll number",rno,"found !!!"
  print*,"Student name:",stud_name
  print*,"Grades:",grades

end if

close(unit=u)


end program DAF
