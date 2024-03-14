#!/bin/sh
set -x # echo on

BASEDIR=$(dirname "$0")
BIN=${BIN=$1}
RENODE_PATH="/opt/vp/renode_1.14.0_portable"

# Update python peripheral to renode directory
cp $BASEDIR/../../vp/devel/python_peripherals/DLA.py $RENODE_PATH/python_peripherals/DLA.py

renode --console -e "set bin @$BIN; include @$BASEDIR/../../scripts/start_hpc.resc"
