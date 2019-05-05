program weather

implicit none

integer :: n,i

integer(kind=4),allocatable,dimension(:):: temp,RH

character*20,allocatable,dimension(:) :: t,r


print*,"Enter how many days"

read*,n

allocate(temp(n),RH(n),t(n),r(n))

do i = 1,n
  
  print*,"Enter the temperature and RH for the day",i
  
  read*,temp(i),RH(i)
  
end do

do i = 1,n

  if (temp(i) < -90 .and. temp(i) > 90) then
       exit    
  else 
       select case(temp(i))
          case(:10)
            t(i) = "Freezing"
          case(11:20)
            t(i) = "cold"
          case(21:30)
            t(i) = "pleasant"
          case(31:40)
            t(i) = "hot"
          case(41:)
            t(i) = "too hot"
          case default
            t(i) = "unknown"
          end select
          
  end if

  if (RH(i) < 0 .and. RH(i) > 100) then
       exit    
  else 
       select case(RH(i))
          case(:20)
            r(i)= "Dry"
          case(21:40)
            r(i) = "Little dry"
          case(41:60)
            r(i) = "Pleasant"
          case(61:80)
            r(i) = "Sweaty"
          case(81:)
            r(i) = "Harsh"
          case default
            r(i)= "unknown"
          end select
          
  end if 


end do

do i = 1,n

print*,"Day",i,": The day is ",t(i), " and ",r(i), "with a temperature of ",temp(i),&
       "degrees and a RH of",RH(i)

end do

deallocate(temp,RH,t,r)


end program weather
