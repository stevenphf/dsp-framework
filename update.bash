#!/bin/bash
git submodule update --init
if [ "$1" == "no_hwacha" ]; then
  cd rocket-chip; cat .gitmodules | grep path | awk '{print $3}' | grep -v hwacha | xargs git submodule update --init; cd ..
else
  cd rocket-chip; git submodule update --init; cd ..
fi

