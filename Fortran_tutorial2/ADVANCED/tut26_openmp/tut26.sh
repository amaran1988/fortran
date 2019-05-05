
rm *.o *.exe
ls

echo "Running in Serial"

gfortran -c tut26.f90
gfortran *.o -o tut26.exe
./tut26.exe

rm *.o *.exe
ls

echo "Running in parallel"

gfortran -fopenmp -c tut26.f90
gfortran -fopenmp *.o -o tut26.exe
./tut26.exe
