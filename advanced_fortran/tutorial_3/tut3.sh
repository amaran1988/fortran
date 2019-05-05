clear
ls
rm *.o *.exe *.mod
echo "removing files"
gfortran -c maths_mod2.f90
echo "compiling the module first"
gfortran -c tut3.f90
echo "Compiling the main file"
gfortran tut3.o maths_mod2.o -o tut3.exe
echo "Executable created"
ls
echo "Running executable"
./tut3.exe

