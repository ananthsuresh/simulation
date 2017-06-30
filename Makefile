all:
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
	rm *.txt *.png
