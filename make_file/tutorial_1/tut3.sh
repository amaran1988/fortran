#!/bin/bash

clear
ls

echo ""
echo ""
echo "==== Removing files ===="

cat<<END
rm *.o *.exe *.mod
END

rm *.o *.exe *.mod
echo ""
echo ""
echo "==== Compiling the module first ===="
cat<<END
gfortran -c maths_mod2.f90
END

gfortran -c maths_mod2.f90
echo ""
echo ""
echo "==== Compiling the main file ===="
cat<<END
gfortran -c tut3.f90
END

gfortran -c tut3.f90
echo ""
echo ""
echo "==== Executable file created ===="
cat<<END
gfortran tut3.o maths_mod2.o -o tut3.exe
ls
END

gfortran tut3.o maths_mod2.o -o tut3.exe
ls
echo ""
echo ""
echo "==== Running executable ===="
cat<<END
./tut3.exe
END

./tut3.exe

