ls
rm *.o *.mod *.exe *.txt
ls
gfortran -c tut14.f90
ls
gfortran tut14.o -o tut14.exe
ls
./tut14.exe
ls
gnuplot
