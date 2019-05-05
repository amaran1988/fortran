program sub_trial

implicit none

print*,"Entering subroutine A"

call sub_A

print*,"We left A"

print*,"This is the end"

end program sub_trial


subroutine sub_A

print*,"We are inside A"

call sub_B

print*,"We left B"


end subroutine sub_A


subroutine sub_B

print*,"We are inside B now"



end subroutine sub_B
