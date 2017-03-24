

ROSE_INSTALL=/usr/workspace/wsa/bluenet/thiago/tools/rose-install-fork%gcc\@5.3.0/bin
ROSE_EXEC = testFrontEnd 
EXEC = $(ROSE_INSTALL)/$(ROSE_EXEC)
EXEC_FLAGS = -c

FILES=ModDataStruct.f90 ModMPI.f90 

all: exec 
	
exec: $(FILES) 
	$(EXEC) $< $(EXEC_FLAGS)

exec_debug: $(FILES) 
	$(EXEC)  -rose:verbose 3  $< $(EXEC_FLAGS)
clean:
	rm -f  *.rmod *.s cab*.core *.o *.mod 


