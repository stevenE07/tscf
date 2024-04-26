#!/bin/bash
#SBATCH --job-name=neuronalnetwork
#SBATCH --ntasks=1
#SBATCH --mem=2048
#SBATCH --time=2:00:00
#SBATCH --tmp=9G
#SBATCH --partition=normal
#SBATCH --qos=normal
#SBATCH --mail-type=ALL
#SBATCH --mail-user=edison.estramil@fing.edu.uy

source /etc/profile.d/modules.sh

cd /scratch/edison.estramil/
./ejecutar.sh