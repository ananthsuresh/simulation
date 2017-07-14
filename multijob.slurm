#!/bin/bash
#SBATCH --nodes=1
#SBATCH -c 8
#SBATCH -n 8

module load git
cp *.c $PFSDIR/.
cp Makefile $PFSDIR/.
cd $PFSDIR
make hpc
echo SERIAL JOBS
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

rm *.exe
git checkout openmp
make hpc

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

rm *.exe
git checkout mpi
make clean

echo 1 Processor
mpiexec -n 1 hhsim.exe -n 2000
mpiexec -n 1 hhsim.exe -n 4000
mpiexec -n 1 hhsim.exe -n 6000
mpiexec -n 1 hhsim.exe -n 8000
mpiexec -n 1 hhsim.exe -n 10000
echo 2 Processors
mpiexec -n 2 hhsim.exe -n 2000
mpiexec -n 2 hhsim.exe -n 4000
mpiexec -n 2 hhsim.exe -n 6000
mpiexec -n 2 hhsim.exe -n 8000
mpiexec -n 2 hhsim.exe -n 10000
echo 4 Processors
mpiexec -n 4 hhsim.exe -n 2000
mpiexec -n 4 hhsim.exe -n 4000
mpiexec -n 4 hhsim.exe -n 6000
mpiexec -n 4 hhsim.exe -n 8000
mpiexec -n 4 hhsim.exe -n 10000
echo 8 Processors
mpiexec -n 8 hhsim.exe -n 2000
mpiexec -n 8 hhsim.exe -n 4000
mpiexec -n 8 hhsim.exe -n 6000
mpiexec -n 8 hhsim.exe -n 8000
mpiexec -n 8 hhsim.exe -n 10000
echo 10 Processors
mpiexec -n 10 hhsim.exe -n 2000
mpiexec -n 10 hhsim.exe -n 4000
mpiexec -n 10 hhsim.exe -n 6000
mpiexec -n 10 hhsim.exe -n 8000
mpiexec -n 10 hhsim.exe -n 10000
