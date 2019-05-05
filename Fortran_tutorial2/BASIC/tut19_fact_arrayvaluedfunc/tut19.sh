clear
ls
rm *.o *.mod *.exe
ls
gfortran -c fact_mod.f90
ls
gfortran -c tut19.f90
ls
gfortran fact_mod.o tut19.o -o tut19.exe
ls
./tut19.exe
