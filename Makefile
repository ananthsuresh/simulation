all:
	mpicc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	rm *.txt *.png
	mpicc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
