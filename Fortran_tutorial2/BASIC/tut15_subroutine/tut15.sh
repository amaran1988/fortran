#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c *.f90
gfortran *.o -o tut15.exe
./tut15.exe
