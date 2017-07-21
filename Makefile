all:
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	rm -f *.exe *.txt *.png
	gcc-7 -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
