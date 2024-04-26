#!/bin/bash
#SBATCH --job-name=mitrabajo
#SBATCH --ntasks=1
#SBATCH --mem=512
#SBATCH --time=12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-type=ALL
#SBATCH --mail-user=edison.estramil@fing.edu.uy

# de acuerdo a lo que quiera ejecutar puede elegir entre las siguientes tres líneas.
#SBATCH --gres=gpu:1 # se solicita una gpu cualquiera( va a tomar la primera que quede disponible indistintamente si es una p100 o una a100)
#SBATCH --gres=gpu:p100:1 # se solicita una nvidia p100
#SBATCH --gres=gpu:a100:1 # se solicita una nvidia a100, tenga en cuenta que solamente hay 2 a100 disponibles en toda la ifraestructura y están ubicadas en servidores diferentes (node15 y node16)



#SBATCH --partition=normal
#SBATCH --qos=gpu


source /etc/profile.d/modules.sh

cd /scratch/edison.estramil/tscf/
./ejecutar.sh