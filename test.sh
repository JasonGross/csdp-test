#!/bin/bash
if [ -z "$CSDP" ]; then
  CSDP=/usr/bin/csdp
fi

TESTS="sos19824d.dat-s sos23df78.dat-s sos52b7f4.dat-s sos71ee5e.dat-s sos9174a9.dat-s sosa1f79f.dat-s sosd6995a.dat-s"

for i in $TESTS; do "$CSDP" $i 2>/dev/null >/dev/null; done
exit 0
