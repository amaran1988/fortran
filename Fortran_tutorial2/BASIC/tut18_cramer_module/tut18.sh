clear
ls
rm *.o *.mod *.exe
ls
gfortran -c maths_mod.f90
ls
gfortran -c tut18.f90
ls
gfortran maths_mod.o tut18.o -o tut18.exe
ls
./tut18.exe
