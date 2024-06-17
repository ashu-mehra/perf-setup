#!/bin/bash

# use tuned cpu-partitioning profile
# check /etc/tuned/cpu-partitioning-variables.conf to configure isolated cpus
sudo tuned-adm profile cpu-partitioning
# disable turbo boost
#sudo sh -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"
sudo sh -c "/bin/echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo"

# disable THP
sudo sh -c "/bin/echo "never" > /sys/kernel/mm/transparent_hugepage/enabled"

# clear OS caches
sync && sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"

# disable SMP
sudo sh -c "/bin/echo off > /sys/devices/system/cpu/smt/control"
