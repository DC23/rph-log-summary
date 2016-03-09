#!/bin/sh
#SBATCH --job-name=Dry-run Purge log summariser
#SBATCH --account=astronomy856
#SBATCH --partition=workq
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

module load python/2.7.10

LOG_FILE=/scratch2/PurgeTest/askap_2016-03-03
MAX_RECORDS=1000000

aprun -n 1 \
time \
python ./rh_log_summary.py \
--atime_threshold 30.0 \
--max_records $MAX_RECORDS \
$LOG_FILE
