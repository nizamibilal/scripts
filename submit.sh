#!/bin/bash

j=26
for i in {1..12}; do
    echo $j
    mkdir cpu_$j
    cd cpu_$j 
    qsub -l select=2:ncpus=24:mpiprocs=24 ../amber_bm.pbs
    ((j+=2)) 
    echo $j  
    cd ..
done