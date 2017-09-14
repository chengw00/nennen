#!/bin/csh

# ===== uncomment this for CISL HPC systems ====
#module load gnu/5.1.0

set CODE = /glade/p/ral/nsap/chengw/analog_code/analog_code_rong.20150722_new_flags_add_gnu_no_pgi_code/anen

setenv NETCDF_ROOT /glade/apps/opt/netcdf/4.3.3.1/gnu/5.1.0
#setenv NETCDF_ROOT /glade/apps/opt/netcdf/4.3.0/gnu/4.8.0

# ==============
setenv NETCDFLIB ${NETCDF_ROOT}/lib
setenv NETCDFINC ${NETCDF_ROOT}/include

# ======= this works for sequential ========
./configure FC=gfortran NETCDF_ROOT=$NETCDF_ROOT --prefix=$CODE
#
make

#make install
