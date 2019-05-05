
program DA

integer, parameter :: u=10, g=2
integer, dimension(g) :: grades
integer :: rollno, rno, ios, no
character :: stud_name*20
logical :: op_status

open(unit=u,file="stud_rec.txt",status="replace", access = "direct", &
  &  recl = 43 ,iostat=ios,form="formatted")

if (ios/=0) then
 print*,"File cannot be opened"
 stop
end if
  
print*,"Enter the number of entries"
read*,no

15 format(i5,3x,A20,2i5)

do i=1,no
  
  print*, "Enter the roll no."
  read*,   rollno
  print*, "Enter the student name"
  read*,   stud_name
  print*, "Enter the grades"

  do j=1,g
    read*,grades(j)
  end do

write(unit=u,fmt=15,rec=rollno),rollno,stud_name,grades

end do

close(unit=u)

inquire(unit=u, opened=op_status)

print*,op_status ! true or false

print*,"Writing is done. Let us find the roll no."

rno = 10

open(unit=u,file="stud_rec.txt",status="old", &
 &   recl=43, access= "direct",form="formatted",iostat=ios)
 
inquire(unit=u, opened=op_status)

print*,op_status ! true or false

read(unit=u,fmt=15,rec=rno),rollno,stud_name,grades

if (rno==rollno) then
  
   print*,"Student found for Roll no.",rno
   print*,"Student name:",stud_name
   print*,"Grades:",grades
else 
   print*,"Given roll number not available in this file"

end if

close(unit=u)

end program DA
