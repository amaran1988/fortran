! select case conditions

program cal_date2


implicit none

integer :: dt,mon,yr,yr2,m,m2,amar,day_nr
character*25,dimension(12) :: months
character*25,dimension(7) :: days
integer,dimension(5) :: years



months(1)  =  "January"
months(2)  =  "February"
months(3)  =  "March"
months(4)  =  "April"
months(5)  =  "May"
months(6)  =  "June"
months(7)  =  "July"
months(8)  =  "August"
months(9)  =  "September"
months(10) =  "October"
months(11) =  "November"
months(12) =  "December"


days(1) = "Sunday"
days(2) = "Monday"
days(3) = "Tuesday"
days(4) = "Wednesday"
days(5) = "Thursday"
days(6) = "Friday"
days(7) = "Saturday"




years(1) = 1700
years(2) = 1800
years(3) = 1900
years(4) = 2000



print*,"Enter the date, month and year"
read*,dt,mon,yr


100 if (yr >= 1700 .and. yr<1800) then

     yr2 = yr-1700
     m2 = 4
   
    else if (yr >= 1800 .and. yr<1900) then
   
         yr2 = yr-1800
         m2 = 2
         
    else if (yr >=1900 .and. yr<2000) then
    
             yr2 = yr-1900
             m2 = 0
             
    else if (yr>=2000 .and. yr<2100) then
             yr2 = yr-2000
             m2 = 6
             
    else if (yr>=2100) then
               yr = yr-400
               goto 100
               
    else if(yr<1700) then
               yr = yr+400
               goto 100
               
end if
   
   
select case(mon)

      case(3,11)
         m=4
      case(9,12)
         m=6
      case(4,7)
         m=0
      case(6)
         m=5
      case(5)
         m=2
      case(10)
         m=1
      case(8)
         m=3
      case(1)
         jan: select case(mod(yr,4)==0)
                case(.true.)
                   m=0
                case(.false.)
                   m=1
                 case default
                   m=-1
                   print*,"Invalid input"
         end select jan
      
      case(2)
          feb: select case(mod(yr,4)==0)
                 case(.true.)
                    m=3
                  case(.false.)
                    m=4
                  case default
                    m=-1
                    print*,"Invalid input"
            end select feb
end select
                    
    

amar = (yr2/4 + dt) + m + m2 + yr2

day_nr = mod(amar,7)

if (day_nr == 0) then

  day_nr = 7

end if


print*,"The day is ", days(day_nr)


end program cal_date2


