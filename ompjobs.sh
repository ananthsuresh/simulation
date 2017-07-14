echo OMP JOBS
export OMP_NUM_THREADS=1
echo 1 thread
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000
export OMP_NUM_THREADS=2
echo 2 threads
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000
export OMP_NUM_THREADS=4
echo 4 threads
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000
export OMP_NUM_THREADS=8
echo 8 threads
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000
export OMP_NUM_THREADS=10
echo 10 threads
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000
