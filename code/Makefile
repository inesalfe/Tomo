all: seq seq_dense seq_sparse omp_dense omp_sparse omp_sparse_atomic

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

omp_sparse_atomic:
	make -f makefile.omp_sparse_atomic
	
clean:
	rm -fv bin/*.o bin/*.exe