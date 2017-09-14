INTAINERCLEANFILES    = Makefile.in
noinst_LIBRARIES = libanen.a
libanen_a_SOURCES = \
	f90_config.gfortran.f90 \
	config.f90 \
	stdlit.f90 \
	count_substrings.f90 \
	lowercase.f90 \
	netcdf_sup.f90 \
	permute.f90

AM_FCFLAGS = $(NETCDFINC_FLAGS)

CLEANFILES = *.o *.mod *.a 

# DEPENDENCIES
include Makefile.dep
