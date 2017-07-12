# Slurm-status
export PATH="$HOME/source/slurm-status:$PATH"

# Miniconda python
export PATH="$HOME/opt/miniconda/bin:$PATH"

# Amber
export AMBERHOME="$HOME/opt/amber16"
export PATH="$AMBERHOME/bin:$PATH"
export LD_LIBRARY_PATH="$AMBERHOME/lib:$LD_LIBRARY_PATH"

module load system
module load git
module load gcc
module use $HOME/mymods
