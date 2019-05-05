#!/bin/sh
#
#
clear
rm *.o *.exe
gfortran -c *.f90
gfortran *.o -o tut16.exe
./tut16.exe
