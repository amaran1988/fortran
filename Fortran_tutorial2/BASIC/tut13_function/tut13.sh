#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut13.f90
gfortran -c sq_func.f90
gfortran tut13.o sq_func.o -o tut13.exe
./tut13.exe
