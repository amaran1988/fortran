!Examples of Subroutine

program checksub

  implicit none


  print*,"WE are inside the main program"

  print*,"Calling subroutine A"

  call A

  print*,"We are back to the main program"

end program checksub


subroutine A

 implicit none

 print*,"We are inside subroutine A"
 print*,"Calling subroutine B"
 call B
 print*,"We are back to subroutine A"


end subroutine A 
