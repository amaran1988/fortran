#-----------------------------------------
#The complicated version of a make file
#-----------------------------------------

# A variable to define the fortran compiler
FC = gfortran

# A variale to define a compiler flag
FCFLAGS = -c

# A variable to define links
LINKER = $(FC) -o

# A dummy variable just in case
FCLINKS = 

# A variable to store object files
OBJS = gauss_mod.o tut8.o

# A variable to store executable
TARGET = tut8.exe
# Function to make all
all: $(TARGET)

# This line produces the executable
$(TARGET): $(OBJS)
	@echo "-----------------------------"
	@echo "Creating the executable"
	@echo "-----------------------------"
	$(LINKER) $(TARGET) $(OBJS)  $(FCLINKS) 

# Compile all object files in automated way
%.o : %.f90
	@echo "-----------------------------"
	@echo "Compiling the file $<"
	@echo "-----------------------------"
	$(FC) $(FCFLAGS) $<

# This line cleans the previous results
clean:
	rm -rf *.o *.mod *.exe *~

#This runs the program
run: $(TARGET)
	./$(TARGET)

# Dependency chains
tut8.o      :  tut8.f90 gauss_mod.o
gauss_mod.o :  gauss_mod.f90

