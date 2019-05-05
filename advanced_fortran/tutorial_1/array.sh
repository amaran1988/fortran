clear
ls
rm *.o *.exe *.mod
gfortran -c maths_mod.f90
ls
gfortran -c tutorial01_array.f90
ls
gfortran tutorial01_array.o maths_mod.o -o array.exe
./array.exe
