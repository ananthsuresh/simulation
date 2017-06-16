all:
	gcc -std=c99 hhsim.c tm_util.c integ_util.c -o hhsim.exe -lm
