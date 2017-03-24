

ROSE_INSTALL=/usr/workspace/wsa/bluenet/thiago/tools/rose-install-fork%gcc\@5.3.0/bin
ROSE_EXEC = testFrontEnd 
EXEC = $(ROSE_INSTALL)/$(ROSE_EXEC)
EXEC_FLAGS = -c

FILES=ModDataStruct.f90 ModMPI.f90 

all: ModDataStruct.f90 ModMPI.f90
	$(EXEC) $(FILES) $(EXEC_FLAGS)

clean:
	rm -f  *.rmod *.s cab*.core *.o *.mod 


