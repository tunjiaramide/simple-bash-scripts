#!/bin/bash


#####################
# Author: Aramide Adetunji
# Date: Feb 8 2024
# This script outputs the node health
#
# Version: v1
####################

set -x
set -e
set -o pipefail 

df -h


free -g

nproc 


ps -ef | grep chrome | awk -F " " '{ print $2}'


