#!/bin/bash
#SBATCH --nodes=1
#SBATCH --output=timeconsole.txt 

module load python
cp *.c $PFSDIR/.
cp *.py $PFSDIR/.
cp *.exe $PFSDIR/.
cd $PFSDIR


./hhsim.exe -n 100 -p time
./hhsim.exe -n 200 -p time
./hhsim.exe -n 300 -p time

python plot_time.py pstime.txt

cp *.txt /home/axs1264/simulation
cp *.png /home/axs1264/simulation
