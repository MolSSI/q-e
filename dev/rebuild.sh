module unload gcc/7.2.0
module load intel/2017u4
module load intel-mpi/2017u4

cd ../

# copy the MDI modules out of the subtree and into the appropriate directories
#cp mdi/molssi_driver_interface/mdi.c clib
#cp mdi/molssi_driver_interface/mdi.h clib
#cp mdi/molssi_driver_interface/mdi_f90.f90 Modules
rm -r mdi/build

make -j 32 pw
