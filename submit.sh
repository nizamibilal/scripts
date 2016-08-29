#!/bin/bash
#+++++++++++++++++++++++++++++++++++++++++
#
#	This script submit 10 pbs pro job
#   with different number of cpus (with the increment of 2)
#	This could be used for benchmarking 
#
#+++++++++++++++++++++++++++++++++++++++++

j=2
for i in {1..12}; do
    echo $j
    mkdir cpu_$j
    cd cpu_$j 
    qsub -l select=1:ncpus=24:mpiprocs=24 ../amber_bm.pbs
    ((j+=2)) 
    echo $j  
    cd ..
done