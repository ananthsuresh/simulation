all:
	gcc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

clean:
	rm -f *.exe *.txt *.png
	gcc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm

hpc:
	rm -f *.exe *.txt *.png
	icc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
