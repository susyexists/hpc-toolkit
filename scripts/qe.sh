num_cores=$1
cd /
git clone https://gitlab.com/QEF/q-e.git
cd /q-e
./configure -with-hdf5=/opt/hdf5
make all -j $num_cores
make install
cd /