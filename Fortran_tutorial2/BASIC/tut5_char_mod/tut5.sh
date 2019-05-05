#!/bin/sh
#
#
rm *.o *.exe
gfortran -c tut5.f90
gfortran tut5.o -o tut5.exe
./tut5.exe

