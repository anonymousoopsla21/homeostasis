#!/bin/bash

#PBS -l mem=2gb,nodes=k2n02:ppn=64,walltime=23:59:59
#PBS -o outlog.txt
#PBS -e errlog.txt

export OMP_NUM_THREADS=64
export OMP_PLACES=cores
export OMP_PROC_BIND=close

tpdir=`echo $PBS_JOBID | cut -f 1 -d .`  
tempdir=/tmp/job$tpdir  
mkdir -p $tempdir  
cd $tempdir  
cp -R $PBS_O_WORKDIR/* .  
# Put your commands here.
# NOTE: You must have an all-jobs folder somewhere outside.

cd runner
./pre-and-post-all-cat.sh taco-more-tests

mv $tempdir $PBS_O_WORKDIR/../all-jobs/
