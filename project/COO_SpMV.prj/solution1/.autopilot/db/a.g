#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sec322/ece5775/ece5775_project/project/COO_SpMV.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
