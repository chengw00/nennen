#!/bin/csh
#
# LSF batch script to run wrf.exe MPI code
#
#BSUB -n 1                              # number of total (MPI) tasks
#BSUB -J analog                           # job name
#BSUB -o analog.out                       # output filename
#BSUB -e analog.err                       # error filename
#BSUB -W 00:30                          # wallclock time
#BSUB -P NSAP0003 
#BSUB -q regular 

cd /glade/u/home/alessand/analog 


./main_analog

