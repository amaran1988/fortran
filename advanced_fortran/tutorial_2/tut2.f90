program str_funcs

implicit none

character :: name1*20 = " Fortran ",name2*20 = "C++",name6*20
character :: name3*20,name4*20,name5*20=" String s "

10 format("The Name ",i5," is",A10,"and the Name",i5," is",A10,"_Check")
20 format("Name 3 is:",A10,"Name 4 is:",A10)

print 10,1,name1,2,name2

name3 = name1//name2

name4 = trim(name1)//trim(name2)

name6 = adjustl(name5)

print 20,name3,name4

print 10,5,name5,6,name6

print*,"The length of the string is: ",len(" String s ")

end program str_funcs
