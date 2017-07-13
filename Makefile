all:
	gcc -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	gcc -fopenmp -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
	rm -f *.txt *.png
