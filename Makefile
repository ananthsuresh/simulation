all:
	mpicc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	mpicc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
	rm -f *.txt *.png
