module load foss/2015.05
module load GCC/4.9.2-binutils-2.25
module load git/2.4.1
module load CUDA/7.5.18
module load CMake/3.3.1

export PATH=$HOME/source/slurm-status:$PATH
export AMBERHOME="$HOME/opt/amber16"
export PATH="$AMBERHOME/bin:$PATH"
export LD_LIBRARY_PATH="$AMBERHOME/lib:$LD_LIBRARY_PATH"
