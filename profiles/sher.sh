PATH=$HOME/bin:$PATH
PATH=$HOME/opt/miniconda3/bin:$PATH
PATH=$HOME/opt/git/bin:$PATH
PATH=$HOME/opt/gromacs/bin:$PATH
export PATH

export AMBERHOME="$HOME/opt/amber16"
export PATH="$AMBERHOME/bin:$PATH"
export LD_LIBRARY_PATH="$AMBERHOME/lib:$LD_LIBRARY_PATH"

module load cmake/3.2.2
module load gcc/5.3.0
module load openmpi/2.0.0

