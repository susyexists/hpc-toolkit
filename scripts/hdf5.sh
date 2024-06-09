num_cores=$1
HDF5_USE_FILE_LOCKING=FALSE
git clone https://github.com/HDFGroup/hdf5.git
cd /hdf5
./autogen.sh
./configure --prefix=/opt/hdf5 --enable-fortran --enable-parallel CC=mpicc CXX=mpicxx FC=mpifort
make -j $num_cores
make install
cd /