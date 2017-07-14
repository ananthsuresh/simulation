echo MPI JOBS...

echo 1 processor
mpiexec -n 1 hhsim.exe -n 2000
mpiexec -n 1 hhsim.exe -n 4000
mpiexec -n 1 hhsim.exe -n 6000
mpiexec -n 1 hhsim.exe -n 8000
mpiexec -n 1 hhsim.exe -n 10000

echo 2 processor
mpiexec -n 2 hhsim.exe -n 2000
mpiexec -n 2 hhsim.exe -n 4000
mpiexec -n 2 hhsim.exe -n 6000
mpiexec -n 2 hhsim.exe -n 8000
mpiexec -n 2 hhsim.exe -n 10000

echo 4 processor
mpiexec -n 4 hhsim.exe -n 2000
mpiexec -n 4 hhsim.exe -n 4000
mpiexec -n 4 hhsim.exe -n 6000
mpiexec -n 4 hhsim.exe -n 8000
mpiexec -n 4 hhsim.exe -n 10000

echo 8 processor
mpiexec -n 8 hhsim.exe -n 2000
mpiexec -n 8 hhsim.exe -n 4000
mpiexec -n 8 hhsim.exe -n 6000
mpiexec -n 8 hhsim.exe -n 8000
mpiexec -n 8 hhsim.exe -n 10000

echo 10 processor
mpiexec -n 10 hhsim.exe -n 2000
mpiexec -n 10 hhsim.exe -n 4000
mpiexec -n 10 hhsim.exe -n 6000
mpiexec -n 10 hhsim.exe -n 8000
mpiexec -n 10 hhsim.exe -n 10000
