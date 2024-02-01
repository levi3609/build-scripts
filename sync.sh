# Remove local_manifests directory
rm -rf .repo/local_manifests

# Clone the manifest repository
git clone https://github.com/LOS-Sweet/local_manifest --depth 1 -b los .repo/local_manifests

# Start sync
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)

# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
