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
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/levi3609/build-scripts.git -b los
chmod u+x scripts/sync.sh
./scripts/sync.sh
