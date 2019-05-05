
# This is the make file for creating the tut3.exe


# Define a variable for fortran compiler
FC = gfortran


# This variable gives the compiler flags
FCFLAGS = -c


# A variable to define linking object files
LINKER = $(FC) -o


# A variable to store the final executable
PROG = tut3.exe

# A variable to store object files
OBJS = tut3.o maths_mod2.o

# A dummy variable just in case
FCLINKS = 

# Make all target
all: $(PROG)

# This line produces the executable
$(PROG): $(OBJS)
	@echo "---------------------------------------"
	@echo "Creating the executable for the program"
	@echo "---------------------------------------"
	$(LINKER) $(PROG) $(OBJS) $(FCLINKS) 


# Automated manner to produce object files
%.o : %.f90
	@echo "---------------------------------------"
	@echo "Compiling the file $<"
	@echo "---------------------------------------"
	$(FC) $(FCFLAGS) $<


# This clears the 'exe','o' and 'mod' files
clean: 
	rm -rf *.exe *.o *~ *.mod


# Dependency chain
tut3.o        :  tut3.f90 maths_mod2.o
maths_mod2.o  :  maths_mod2.f90
