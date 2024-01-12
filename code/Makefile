all: seq seq_dense seq_sparse omp_dense omp_sparse

seq:
	make -f makefile.seq

seq_dense:
	make -f makefile.seq_dense

seq_sparse:
	make -f makefile.seq_sparse

omp_dense:
	make -f makefile.omp_dense

omp_sparse:
	make -f makefile.omp_sparse
	
clean:
	rm -fv bin/*.o bin/*.exe