#!/bin/sh
#
#
rm *.txt *.o *.exe *.mod
ls
gfortran -c tut23.f90
ls
gfortran *.o -o tut23.exe
ls
./tut23.exe

