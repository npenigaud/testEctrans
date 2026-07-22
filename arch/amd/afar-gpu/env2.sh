source /home/afar/modules/use.sh
module load cmake/3.31.7
module load rocm
module load openmpi/rocm-7.2.2/5.0.10
module load afar/23.2.1.gfx90a
###module load rocm
###module load afar/23.2.1.gfx90a
###module load cmake/3.31.7
###module load openmpi/afar-23.2.1/5.0.10
#module unload -f openmpi-rt/ucx
#module load openmpi-rt/sm

export FC=flang
export F90=flang
export CC=clang
export CXX=clang++
export OMPI_FC=flang
export OMPI_F90=flang
export OMPI_CC=clang
export OMPI_CXX=clang++
export I_MPI_FC=flang
export I_MPI_F90=flang
export I_MPI_CC=clang
export I_MPI_CXX=clang++

