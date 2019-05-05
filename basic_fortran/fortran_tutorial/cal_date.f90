Program day_calc

real*8::dt,mon,yr,m2,m,yr_2,amar
character*12,dimension(7):: days
character*12,dimension(12) :: months
real*8,dimension(4) :: years

print *,"Enter the date, month and year"

read*,dt,mon,yr

years(1)=1700
years(2)=1800
years(3)=1900
years(4)=2000


    
100 if (yr>=1700 .and. yr<1800) then

    m2 = 4
    yr_2 = yr-1700
    
else if (yr>=1800 .and. yr<1900) then

    m2 = 2
    yr_2 = yr-1800
    
else if (yr>=1900 .and. yr<2000) then

    m2 = 0
    yr_2 = yr-1900
    
else if (yr>=2000 .and. yr<2100) then

    m2 = 6
    yr_2 = yr-2000
    
else if (yr>=2100) then

     yr = yr-400
     go to 100
     
else if (yr<1700) then

     yr = yr+400
     go to 100
    
end if


! leap year = 144 025 036 146
! non-leap yr=034 025 036 146

days(1)="Sunday"
days(2)="Monday"
days(3)="Tuesday"
days(4)="Wednesday"
days(5)="Thursday"
days(6)="Friday"
days(7)="Saturday"

months(1)="January"
months(2)="Febuary"
months(3)="March"
months(4)="April"
months(5)="May"
months(6)="June"
months(7)="July"
months(8)="August"
months(9)="September"
months(10)="October"
months(11)="November"
months(12)="December"

select case(mon)
    case(3,11)
       m=4
    case(4,7)
       m=0
    case(5)
       m=2
    case(6)
       m=5
    case(8)
       m=3
    case(9,12)
       m=6
    case(10)
       m=1
    case(1)
        select case(mod(yr,4)==0)
             case(.true.)
                m=0
              case(.false.)
                m=1
              case default
                m=-1
                print *,"Error in input"
                
         end select
         
     case(2)
         select case(mod(yr,4)==0)
             case(.true.)
                m=3
              case(.false.)
                m=4
              case default
                m=-1
                print *,"Error in input"
                
         end select
         
end select
       
     
amar = ((yr_2/4)+dt)+m+m2+yr_2

day_nr = mod(amar,7)

if (day_nr == 0) then
  
  day_nr = 7
  
end if

print *,"The day is ",days(day_nr)


end Program day_calc
