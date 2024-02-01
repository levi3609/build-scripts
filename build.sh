# Build Script for Alioth(Poco F3)

# Remove local_manifests directory
rm -rf .repo/local_manifests

# Clone the manifest repository
git clone https://github.com/levi3609/local_manifest --depth 1 -b main .repo/local_manifests

# Force sync the repository
repo sync --force-sync -c -j $(nproc)

# Set up the build environment
source build/envsetup.sh

# Return to the root of the source tree
croot

# Lunch for alioth device
lunch lineage_alioth-user

# Build for alioth device
mka bacon