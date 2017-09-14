#!/bin/csh

# ==== unload hdf5 is very necessary to compile with ifort ====
#      on yellowstone
module unload hdf5
module load intel/16.0.0
module load netcdf/4.3.3.1

set CODE = /glade/scratch/chengw/anen

setenv NETCDF_ROOT /glade/apps/opt/netcdf/4.3.3.1/intel/16.0.0
#setenv NETCDF_ROOT /glade/apps/opt/netcdf/4.3.0/gnu/4.8.0

# ==============
setenv NETCDFLIB ${NETCDF_ROOT}/lib
setenv NETCDFINC ${NETCDF_ROOT}/include

# ======= this works for sequential ========
#module load gnu/5.1.0

./configure FC=ifort NETCDF_ROOT=$NETCDF_ROOT --prefix=$CODE
#
make

#make install
