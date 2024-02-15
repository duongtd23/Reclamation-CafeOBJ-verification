#! /bin/bash

# in the following two lines, configure your paths to Maude and IPSG folder properly
MAUDE_PATH=/YOUR/PATH/TO/maude.darwin64
IPSG_PATH=/YOUR/PATH/TO/IPSG-tool

DIR=$(pwd)
# echo "Please wait."
# echo ""

$MAUDE_PATH -allow-files $IPSG_PATH/ipsg-without-run.maude <<EOF
cd $DIR
erew run .
load ../common.cafe sc-hp.cafe .
load properties.cafe .
load inputs/input-addruse-lm.cafe .
load inputs/input-detached-lm.cafe .
load inputs/input-rc-addr.cafe .
load inputs/input-rc-detach.cafe .
load inputs/input-rc-lm.cafe .
load inputs/input-safety1.cafe .
load inputs/input1.cafe .
load inputs/input11.cafe .
load inputs/input12.cafe .
q
q
EOF
echo "Finished!"