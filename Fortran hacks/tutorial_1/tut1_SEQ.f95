# 1 "tut1.F95"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "tut1.F95"

!Since we are using pre-processor directives the ordinary extension
! .f95 doesnt work, instead we use .F95 which supports this function 
! and then enable to export this file to a .f95 format using the command
! gfortran -E tut1.F95 > tut1_dir.f95


!#define DIR

program rw



implicit none

integer :: m,n,o,p
real*8,allocatable,dimension(:,:,:,:) :: a,b,c,d,e,f

m = 10
n = 10
o = 10
p = 10



   print*,"File access is in sequential mode"






print*,"The size of storage will be",m*n*o*p*8," bytes for one 4D array"

allocate(a(m,n,o,p),b(m,n,o,p),c(m,n,o,p),d(m,n,o,p),e(m,n,o,p),&
         f(m,n,o,p))

a = 2
b = 10

c = a + b


   open(unit=100,file = "out1.bin",form="unformatted",access="sequential")






     



  print*,"Writing A into file"
  write(100),a
  print*,"Writing B into file"
  write(100),b
  print*,"Writing C into file"
  write(100),c



# 72 "tut1.F95"

close(unit=100)


     open(unit=200,file = "out1.bin",form="unformatted",&
     access='sequential')








  print*,"Reading E from file"
  read(200),e
  print*,"Reading F from file"
  read(200),f
  print*,"Reading D from file"
  read(200),d



# 103 "tut1.F95"


close(200)


print*,"The maximum value of D",maxval(d)
print*,"The maximum value of E",maxval(e)
print*,"The maximum value of F",maxval(f)


deallocate(a,b,c,d,e,f)


end program rw
