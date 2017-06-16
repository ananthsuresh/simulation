#!/bin/bash
#SBATCH --nodes=1
#SBATCH --output=voltageconsole.txt 

module load python
cp *.c $PFSDIR/.
cp *.py $PFSDIR/.
cp *.exe $PFSDIR/.
cd $PFSDIR


./hhsim.exe -n 10 -p voltage  

python plot_voltage.py ps.txt

cp *.txt /home/axs1264/simulation
cp *.png /home/axs1264/simulation
