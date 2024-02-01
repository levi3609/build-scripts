#!/bin/bash
echo
echo "--------------------------------------"
echo "     lineageos 20.0 Buildbot          "
echo "                  by                  "
echo "                nhAsif                "
echo "--------------------------------------"
echo
rm -rf .repo
rm -rf *
repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
git clone https://github.com/levi3609/build-scripts.git -b los
chmod u+x build-scripts/sync.sh
./build-scripts/sync.sh
