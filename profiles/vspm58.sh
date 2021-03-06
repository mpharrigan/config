export PATH="$HOME/opt/miniconda3-2016-09-20/bin:$PATH"
export PATH="$HOME/opt/vmd/bin:$PATH"
export PATH="$HOME/opt/gromacs/bin:$PATH"
export PATH="$HOME/opt/pycharm/bin:$PATH"
export PATH="$HOME/opt/node/bin:$PATH"
export PATH="$HOME/opt/ruby/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"

# Amber
export AMBERHOME="$HOME/opt/amber16"
export PATH="$AMBERHOME/bin:$PATH"
export LD_LIBRARY_PATH="$AMBERHOME/lib:$LD_LIBRARY_PATH"

# Plumed
PLUMED_HOME="$HOME/plumed-2.3.1"
export PLUMED_KERNEL="$PLUMED_HOME/lib/libplumedKernel.so"
export LD_LIBRARY_PATH="$PLUMED_HOME/lib:$LD_LIBRARY_PATH"
export PATH="$PLUMED_HOME/bin:$PATH"

# AMD App SDK
export AMDAPPSDKROOT="$HOME/opt/amdappsdk"
export OPENCL_VENDOR_PATH="$HOME/opt/amdappsdk/etc/OpenCL/vendors/"
export LD_LIBRARY_PATH="$HOME/opt/amdappsdk/lib/x86_64:$LD_LIBRARY_PATH"

# CUDA
export CUDA_HOME="/usr/local/cuda-8.0"
export PATH="$CUDA_HOME/bin:$PATH"
export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"

export OGRE_DIR="$HOME/opt/ogre/"

export SCHRODINGER="$HOME/opt/schrodinger/"
