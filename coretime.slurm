#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --output=coreconsole.txt

module load python
cp *.c $PFSDIR/.
cp *.py $PFSDIR/.
cp *.exe $PFSDIR/.
cd $PFSDIR

export OMP_NUM_THREADS=1
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

export OMP_NUM_THREADS=2
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

export OMP_NUM_THREADS=4
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

export OMP_NUM_THREADS=6
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

export OMP_NUM_THREADS=8
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

export OMP_NUM_THREADS=10
./hhsim.exe -n 2000
./hhsim.exe -n 4000
./hhsim.exe -n 6000
./hhsim.exe -n 8000
./hhsim.exe -n 10000

python plot_voltage.py ps.txt

cp *.txt /home/axs1264/simulation
cp *.png /home/axs1264/simulation
