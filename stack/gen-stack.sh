#! /bin/bash

# in the following two lines, configure your paths to Maude and IPSG folder properly
MAUDE_PATH=/YOUR/PATH/TO/maude.darwin64
IPSG_PATH=/YOUR/PATH/TO/IPSG-tool

DIR=$(pwd)
# echo "Please wait."
# echo ""

$MAUDE_PATH -allow-files $IPSG_PATH/ipsg_without_run.maude <<EOF
cd $DIR
erew run .
load ../common.cafe stack.cafe .
load properties.cafe .
load inputs/input-addruse-lm.cafe .
load inputs/input-detached-lm.cafe .
load inputs/input-rc-addr.cafe .
load inputs/input-rc-detach.cafe .
load inputs/input-rc-lm.cafe .
load inputs/input-safety1.cafe .
load inputs/input2.cafe .
load inputs/input23.cafe .
load inputs/input24.cafe .
load inputs/input25.cafe .
load inputs/input32.cafe .
q
q
EOF
echo "Finished!"

# NOTE THAT it may take a few seconds for the tool to load the specification at the beginning