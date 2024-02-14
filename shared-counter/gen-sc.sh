#! /bin/bash

DIR=$(pwd)
echo "Please wait."
echo ""

# in the following line, modify paths to Maude and IPSG:
Maude32/maude.darwin64 -allow-files ipsg/ipsg.maude <<EOF
load $DIR/../common.cafe .
load $DIR/sc-hp.cafe .
load $DIR/properties.cafe .
load $DIR/inputs/input-addruse-lm.cafe .
load $DIR/inputs/input-detached-lm.cafe .
load $DIR/inputs/input-rc-addr.cafe .
load $DIR/inputs/input-rc-detach.cafe .
load $DIR/inputs/input-rc-lm.cafe .
load $DIR/inputs/input-safety1.cafe .
load $DIR/inputs/input1.cafe .
load $DIR/inputs/input11.cafe .
load $DIR/inputs/input12.cafe .
q
q
EOF
