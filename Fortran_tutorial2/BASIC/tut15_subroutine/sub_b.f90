subroutine B

  implicit none

  print*,"We are inside subroutine B"
  print*,"Calling subroutine C"
  call C
  print*,"WE are back to subroutine B"



end subroutine B


subroutine C

  implicit none

  print*,"We are inside subroutine C"
  print*,"Calling subroutine D"
  call D
  print*,"WE are back to subroutine C"



end subroutine C

subroutine D

  implicit none

  print*,"We are inside subroutine D"



end subroutine D
