#The simplest version of a make file


# This line produces the executable
tut13.exe:  tut13.o
	gfortran tut13.o -o tut13.exe

# This line produces the main object file
tut13.o: tut13.f90 
	gfortran -c tut13.f90

# This line cleans the previous results
clean:
	rm -rf *.o *.mod *.exe *~
	
# This line runs the executable
run:
	time ./tut13.exe
