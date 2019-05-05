ls
rm *.o *.dat *.exe *.mod
ls
gfortran -c tut15.f90
ls
gfortran tut15.o -o tut15.exe
ls
./tut15.exe
ls
gnuplot 
plot "data1.dat" using 1:2
