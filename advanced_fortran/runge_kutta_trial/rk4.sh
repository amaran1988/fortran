rm *.dat *.mod *.o
ls
gfortran -c rk4.f90
ls
gfortran rk4.o -o rk4.exe
ls
./rk4.exe
