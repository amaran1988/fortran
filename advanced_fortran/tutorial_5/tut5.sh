ls
echo "Removing all the files"
rm *.o *.mod *.exe
echo "Compile the module first"
gfortran -c maths_mod3.f90
echo "Compiling the main file"
gfortran -c tut5.f90
echo "Compiling all the object files"
gfortran tut5.o maths_mod3.o -o tut5.exe
echo "Executing"
./tut5.exe
