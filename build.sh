#!/bin/bash

cur=$(dirname $(realpath -- $0))
echo $cur
export PATH=/usr/local/bin:$PATH

cmake \
-DCMAKE_BUILD_TYPE=RELEASE \
-B $cur/bb -C $cur
    
make -C $cur/bb -j$(nproc)
