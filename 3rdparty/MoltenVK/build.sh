#!/bin/bash
echo "Building MoltenVK"
./fetchDependencies --macos
xcodebuild build -quiet -project "$MoltenVK_SOURCE_DIR/MoltenVKPackaging.xcodeproj" -scheme "MoltenVK Package (macOS only)" -configuration "Release" -arch "x86_64" MVK_CONFIG_RESUME_LOST_DEVICE=1 -derivedDataPath .