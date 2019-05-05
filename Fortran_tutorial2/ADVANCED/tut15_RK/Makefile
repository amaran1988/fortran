#The simplest version of a make file


# This line produces the executable
tut15.exe:  tut15.o
	gfortran tut15.o -o tut15.exe

# This line produces the main object file
tut15.o: tut15.f90 
	gfortran -c tut15.f90

# This line cleans the previous results
clean:
	rm -rf *.o *.mod *.exe *.dat .*txt 
	
# This line runs the executable
run:
	./tut15.exe
