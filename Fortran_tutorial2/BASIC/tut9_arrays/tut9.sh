#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c tut9.f90
gfortran tut9.o -o tut9.exe
./tut9.exe

