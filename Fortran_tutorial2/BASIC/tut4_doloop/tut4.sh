#!/bin/sh
#
#
rm *.o *.exe
clear
gfortran -c tut4.f90
gfortran tut4.o -o tut4.exe
./tut4.exe

