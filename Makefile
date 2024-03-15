# Compiler
FC = gfortran
# Flags
FFLAGS = -Wall

#objects
OBJECTS=  monte_carlo_pi.o test_pi.o main.o


output.txt: monte.exe
	./monte.exe > output.txt



# Main program
monte.exe: $(OBJECTS)
			$(FC) $(OBJECTS) -o monte.exe
			

%.o:%.f90
		gfortran -c $<
		
		
# Targets
.PHONY: all clean clobber help output.txt

all: $(EXECUTABLES)
# Clean
clean:
	rm -f $(OBJECTS) *.o *.mod




# Clobber
clobber: clean
	rm -f output.txt


# Help
help:
	@echo "Available targets:"
	@echo "  all       : Builds all executables"
	@echo "  clean     : Removes all executables and object files"
	@echo "  clobber   : Same as clean, but also removes output files"
	@echo "  help      : Prints this help message"
