#!/bin/bash
cd $(dirname $(realpath $0))    # change into script dir
. ./cmv.func


cadr=$[ 0x60300000 + ${1:-0}*4 ]
radr=$[ 0x60304000 + ${2:-0}*4 ]

cval=${3:-0x111}
rval=${4:-0x222}

../cmv_tools/cmv_snap3/cmv_snap3 -t -p -e 100n -d >/tmp/test00.raw16
devmem $cadr h $cval
../cmv_tools/cmv_snap3/cmv_snap3 -t -p -e 100n -d >/tmp/test01.raw16
devmem $radr h $rval
../cmv_tools/cmv_snap3/cmv_snap3 -t -p -e 100n -d >/tmp/test11.raw16
devmem $cadr h 0x0
../cmv_tools/cmv_snap3/cmv_snap3 -t -p -e 100n -d >/tmp/test10.raw16
devmem $radr h 0x0
