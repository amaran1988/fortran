
rm *.o *.exe

ls
echo "Running in serial"
gfortran -c tut26.f90
gfortran tut26.o -o ser.exe
./ser.exe

rm *.o *.exe

ls
echo "Running in parallel"
gfortran -fopenmp -c tut26.f90
gfortran -fopenmp tut26.o -o par.exe
./par.exe
