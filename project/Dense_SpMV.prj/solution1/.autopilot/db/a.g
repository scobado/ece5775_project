#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ak2425/ece5775/ece5775_project/project/Dense_SpMV.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
