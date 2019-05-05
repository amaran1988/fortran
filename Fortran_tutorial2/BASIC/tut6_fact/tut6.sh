#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut6.f90
gfortran tut6.o -o tut6.exe
./tut6.exe

