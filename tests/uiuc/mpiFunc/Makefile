

ROSE_INSTALL=/usr/workspace/wsa/bluenet/thiago/tools/rose-install-fork%gcc\@5.3.0/bin
ROSE_EXEC = testFrontEnd 
EXEC = $(ROSE_INSTALL)/$(ROSE_EXEC)
EXEC_FLAGS = -c
INCS= -I../ -I/opt/mvapich2-gnu-ofa-1.7/include
FLAGS= -DBUILD_COMBUSTION -DHAVE_CANTERA

FILES= ModTestLoop.f90 

all: exec 
	
exec: $(FILES) 
	$(EXEC) $(FLAGS) $< $(INCS) $(EXEC_FLAGS)

exec_debug: $(FILES) 
	$(EXEC)  -rose:verbose 3 $(FLAGS) $< $(INCS) $(EXEC_FLAGS)
clean:
	rm -f  *.rmod *.s cab*.core *.o *.mod 


