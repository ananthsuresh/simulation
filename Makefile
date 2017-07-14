all:
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	rm -f *.txt *.png
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm


hpc:
	rm -f *.exe *.txt *.png
	icc -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
