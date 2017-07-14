#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --output=mpitiming.txt

module load python
cp *.c $PFSDIR/.
cp *.py $PFSDIR/.
cp *.exe $PFSDIR/.
cd $PFSDIR

echo 1 processor...
mpiexec -n 1 hhsim.exe -n 2000
mpiexec -n 1 hhsim.exe -n 4000
mpiexec -n 1 hhsim.exe -n 6000
mpiexec -n 1 hhsim.exe -n 8000
mpiexec -n 1 hhsim.exe -n 10000

echo 2 processors...
mpiexec -n 2 hhsim.exe -n 2000
mpiexec -n 2 hhsim.exe -n 4000
mpiexec -n 2 hhsim.exe -n 6000
mpiexec -n 2 hhsim.exe -n 8000
mpiexec -n 2 hhsim.exe -n 10000

echo 4 processors...
mpiexec -n 4 hhsim.exe -n 2000
mpiexec -n 4 hhsim.exe -n 4000
mpiexec -n 4 hhsim.exe -n 6000
mpiexec -n 4 hhsim.exe -n 8000
mpiexec -n 4 hhsim.exe -n 10000

echo 8 processors...
mpiexec -n 8 hhsim.exe -n 2000
mpiexec -n 8 hhsim.exe -n 4000
mpiexec -n 8 hhsim.exe -n 6000
mpiexec -n 8 hhsim.exe -n 8000
mpiexec -n 8 hhsim.exe -n 10000

echo 10 processors...
mpiexec -n 10 hhsim.exe -n 2000
mpiexec -n 10 hhsim.exe -n 4000
mpiexec -n 10 hhsim.exe -n 6000
mpiexec -n 10 hhsim.exe -n 8000
mpiexec -n 10 hhsim.exe -n 10000

python plot_voltage.py ps.txt

cp *.txt /home/axs1264/simulation
cp *.png /home/axs1264/simulation
