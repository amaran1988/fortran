
rm *.o *.mod *.exe
ls
gfortran -c tut2.f90
ls
gfortran tut2.o -o tut2.exe
ls
./tut2.exe

