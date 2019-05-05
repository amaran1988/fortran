#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut12.f90
gfortran tut12.o -o tut12.exe
./tut12.exe
