ls
rm *.o *.exe
ls
gfortran -c tutorial2_namelist_rw.f90
ls
gfortran tutorial2_namelist_rw.o -o tut.exe
ls
./tut.exe
