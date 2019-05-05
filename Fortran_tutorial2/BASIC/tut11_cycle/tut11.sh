#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut11.f90
gfortran tut11.o -o tut11.exe
./tut11.exe
