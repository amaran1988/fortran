
# This is for namelist_sample file if given in the main .f90 file
AGE=72
echo $AGE
ls
rm *.o *.exe namelist_sample

cat > namelist_sample << NAMELIST

&list1

    year          =     1990,
    MONTH         =     "November",
    AGE           =     $AGE,
    PIZZA_COST    =     1200.50,
    STUDENT       =     .true.,
    TEST_SCORE    =     45.67,67.65,78.43,89.56,90.34,98.67,87.43,
                        76.32,65.45,23.67,    
    MY_NAME       =     "Amaran",
    RPI           =     (5.8,6.5),
    DAY           =     "Monday",
    EYE_COLOR     =     "Brown"
    
&end

NAMELIST



gfortran -c tutorial2_namelist_rw.f90
gfortran tutorial2_namelist_rw.o -o name.exe
./name.exe


