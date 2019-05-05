#!/bin/sh
#
#

clear
rm *.o *.exe
clear
gfortran -c tutorial_2_quadrant.f90
gfortran tutorial_2_quadrant.o -o tut2.exe
./tut2.exe


