

ROSE_INSTALL=/usr/workspace/wsa/bluenet/thiago/tools/rose-install-fork%gcc\@5.3.0/bin
ROSE_EXEC = frontend_test
EXEC = $(ROSE_INSTALL)/$(ROSE_EXEC)
DOT_GEN = ASTGraphGenerator 
ROSE_OBJ_DIR=/usr/workspace/wsa/bluenet/thiago/tools/build/rose/obj-git-fork%gcc\@5.3.0/tutorial/
DOT_EXEC = $(ROSE_OBJ_DIR)/$(DOT_GEN)
EXEC_FLAGS = -c
INCS= 
FLAGS= 

FILES= ModTestEqv.f90

all: exec 
	
exec: $(FILES) 
	$(EXEC) $(FLAGS) $< $(INCS) $(EXEC_FLAGS)

exec_debug: $(FILES) 
	$(EXEC)  -rose:verbose 3 $(FLAGS) $< $(INCS) $(EXEC_FLAGS)

genPdfAst: $(FILES)
	$(DOT_EXEC) $^
	dot -Tpdf $^.dot -o $^_AST.pdf	

clean:
	rm -f  *.rmod *.s cab*.core *.o *.mod *_postprocessed.f90 rose_*


