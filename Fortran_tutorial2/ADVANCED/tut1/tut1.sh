#!/bin/sh
#
#
rm *.o *.mod *.exe
ls
gfortran -c maths_mod.f90 
ls
gfortran -c tut1.f90
ls
gfortran maths_mod.o tut1.o -o tut1.exe
ls
clear
./tut1.exe
