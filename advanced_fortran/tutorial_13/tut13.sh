rm *.o *.exe *.mod
ls
gfortran -c tut13.f90
ls
gfortran tut13.o -o tut13.exe
ls
time ./tut13.exe



