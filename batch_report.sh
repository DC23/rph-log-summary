#!/bin/bash -login
module load python/2.7.10

LOG_FILE=/scratch2/PurgeTest/askap_2016-05-26
#LOG_FILE=/scratch2/PurgeTest/mwa_2016-05-26

echo Report for $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 10.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 20.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 30.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 40.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 50.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 60.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 75.0 $LOG_FILE
echo ----------------
python ./rh_log_summary.py --atime_threshold 90.0 $LOG_FILE
echo ----------------
