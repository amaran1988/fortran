
program seq

implicit none

integer,parameter :: u=10, g=2
integer :: roll, ios,grades(g),no,i,j,rno
character :: stud_name*25


open(unit=u,file="stud_rec.txt",status="replace",iostat=ios)

!-----------------------------------------------------------------------
!             Parameters inside the open function
! ----------------------------------------------------------------------
! unit = ID for the file.
! form = FORMATTED or UNFORMATTED - by default it is formatted.
! file = filename.
! status = This has 5 values as mentioned below
!      1. "OLD" - File already present. Error if file not found.
!      2. "NEW" - File available for first time.Error if file found.
!      3. "SCRATCH" - Temporary file. Gets Deleted after execution.
!      4. "REPLACE" - replace an existing file. deletes the old file.
!      5. "UNKNOWN" - file details not known
! iostat = if 0 then file is open. error when this is non-zero
! access = SEQUENTIAL or DIRECT. by default this is SEQUENTIAL
! recl = integer constant or expression .gt. 0. COMPULSORY for DIRECT 
!        ACCESS files. Specifies the max length of records in DA files
! action = specifies what to be done, READ, WRITE, READWRITE. Deafult is READWRITE
! err = statement number - not sure wtf it is. 
!-----------------------------------------------------------------------

if (ios /= 0 ) then

 print*,"File cannot be opened"
 stop
 
end if

rewind u

print*,"Enter the number of entries:"
read*,no

15 format(i5,3X,A30,3X,2i5)

do i=1,no

  print*,"Enter the roll no for Student",i,":"
  read*,roll
  print*,"Enter the name of the student",i,":"
  read*,stud_name
  print*,"Enter the grades of the student",i,":"
  
  do j = 1,g
     read*,grades(j)
  end do

   write(unit=u,fmt=15),roll,stud_name,grades

end do

!  end file u

rewind u

close(unit=u)


print*,"Writing process done. Reading the data now..."


rno = 10  ! Roll no to find that dude

open(unit=u,file="stud_rec.txt",status="old",iostat=ios)


if (ios /= 0) then
   print*,"Cannot open file."
   stop
end if


do 
    
    read(unit=u,fmt=15,iostat=ios),roll,stud_name,grades
    
    if (ios<0) then !end of file reached
       print*,"Sorry data not available"
       exit
    end if

    if (roll==rno) then 
       print*,"Student found for roll no:",rno
       print*,"Student name:",stud_name
       print*,"grades",grades
       exit
    end if

end do

close(unit=u)

rno = 5

open(unit=u,file="stud_rec.txt",status="old",iostat=ios)

if (ios /= 0) then
   print*,"Cannot open file."
   stop
end if


do
    read(unit=u,fmt=15,iostat=ios),roll,stud_name,grades
    
    if (ios<0) then !end of file reached
       
       print*,"Sorry data not available"
       exit
    
    end if

    if (roll==rno) then 
       
       print*,"Student found for roll no:",rno
       backspace u
       print*,"Enter a new roll no:"
       read*,roll
       print*,"Enter a new name for the student"
       read*,stud_name
       print*,"Enter new grades for the student"
       
       do i=1,g
          read*,grades(i)
       end do
       
       write(unit=u,fmt=15),roll,stud_name,grades
       
       exit
    
    end if
    
end do


close(unit=u)


end program seq
