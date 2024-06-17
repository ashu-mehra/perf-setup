#!/bin/bash

sudo tuned-adm off

# enable turbo boost
#sudo sh -c "echo 1 > /sys/devices/system/cpu/cpufreq/boost"
sudo sh -c "/bin/echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo"

# enable THP
sudo sh -c "/bin/echo "always" > /sys/kernel/mm/transparent_hugepage/enabled"

# enable SMP
sudo sh -c "/bin/echo on > /sys/devices/system/cpu/smt/control"
