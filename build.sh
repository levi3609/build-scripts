#!/bin/bash
#envsetup
source build/envsetup.sh
make clean
# lunch command 
lunch lineage_alioth-user
export TZ=Asia/Dhaka
#make command
mka bacon
