#The simplest version of a make file


# This line produces the executable
tut14.exe:  tut14.o
	gfortran tut14.o -o tut14.exe

# This line produces the main object file
tut14.o: tut14.f90 
	gfortran -c tut14.f90

# This line cleans the previous results
clean:
	rm -rf *.o *.mod *.exe *.txt 
	
# This line runs the executable
run:
	./tut14.exe
