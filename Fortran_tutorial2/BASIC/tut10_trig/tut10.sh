#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut10.f90
gfortran tut10.o -o tut10.exe
./tut10.exe


