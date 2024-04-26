cd /scratch/edison.estramil

git clone https://github.com/stevenE07/tscf.git

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh -b -p /scratch/edison.estramil/miniconda3

source mini/bin/activate

pip install ultralytics

python prueba.py