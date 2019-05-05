! select case further examples

program temprh

implicit none

integer :: n,i,temp,RH

print*,"Enter the number of days"
read*,n


do i=1,n
  print*,"Enter the temperature and RH(%) for the day"
  read*,temp,RH

  if (temp<-90) then
     exit
  else
     select case(temp)
         case(:10)
           print*,"My balls are frozen"
         case(11:20)
           print*,"it's too cold dammit"
         case(21:30)
           print*,"Hmmm.Feels good, spring's around the corner?"
         case(31:35)
           print*,"Ok it's getting hot now"
         case(36:)
           print*,"Turn the fuckin AC dude"
         case default
           print*,"Unknown"

      end select
      if (RH > 100 .or. RH < 0) then
          exit
      else 
          select case(RH)
                 case(:20)
                    print*,"Dry"
                 case(21:40)
                    print*,"little dry"
                 case(41:60)
                    print*,"PLeasant"
                 case(61:80)
                    print*,"Sweaty"
                 case(81:)
                    print*,"Need a deodarant"
                 case default
                    print*,"I dunno whatcha talkin about"
          end select

       end if
  end if

end do





end program temprH
