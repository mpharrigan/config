# .bash_profile

PATH=$HOME/bin:$PATH
PATH=$HOME/opt/python/bin:$PATH
PATH=$HOME/opt/git/bin:$PATH
PATH=$HOME/opt/cmake/bin:$PATH
PATH=$HOME/opt/gromacs/bin:$PATH
export PATH

LD_LIBRARY_PATH=$HOME/opt/openmm/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

export OPENMM_LIB_PATH=$HOME/opt/openmm/lib
export OPENMM_INCLUDE_PATH=$HOME/opt/openmm/include
export OPENMM_PLUGIN_DIR=$HOME/opt/openmm/lib/plugins
export OPENMM_CUDA_COMPILER=/share/sw/free/cuda/6.5/bin/nvcc

module load gcc

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

